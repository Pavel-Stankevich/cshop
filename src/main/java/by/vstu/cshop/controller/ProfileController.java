package by.vstu.cshop.controller;

import by.vstu.cshop.model.Address;
import by.vstu.cshop.model.User;
import by.vstu.cshop.service.AddressService;
import by.vstu.cshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.Collections;

@Controller
public class ProfileController {

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;

    @GetMapping("/profile.html")
    public String profile(final Authentication authentication, final Model model) {
        model.addAttribute("user", userService.getUserByEmail(authentication.getName()));
        return "profile";
    }

    @PostMapping("/profile.html")
    public String editProfile(@ModelAttribute("user") @Valid final User user, final BindingResult result, final Authentication authentication) {
        User dbUser = userService.getUserByEmail(authentication.getName());
        user.setId(dbUser.getId());
        user.setRole(dbUser.getRole());
        if (user.getPassword() == null || user.getPassword().isEmpty()) {
            user.setPassword(dbUser.getPassword());
        } else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }
        if (user.getEmail() == null || user.getEmail().isEmpty()) {
            user.setEmail(dbUser.getEmail());
        }
        if (user.getPerson() == null) {
            user.setPerson(dbUser.getPerson());
        } else {
            user.getPerson().setAddresses(dbUser.getPerson().getAddresses());
            if (user.getPerson().getSurname() == null || user.getPerson().getSurname().isEmpty()) {
                user.getPerson().setSurname(dbUser.getPerson().getSurname());
            }
            if (user.getPerson().getName() == null || user.getPerson().getName().isEmpty()) {
                user.getPerson().setName(dbUser.getPerson().getName());
            }
            if (user.getPerson().getPatronymic() == null || user.getPerson().getPatronymic().isEmpty()) {
                user.getPerson().setPatronymic(dbUser.getPerson().getPatronymic());
            }
            if (user.getPerson().getBirthday() == null) {
                user.getPerson().setBirthday(dbUser.getPerson().getBirthday());
            }
            if (user.getPerson().getPhoneNumber() == null || user.getPerson().getPhoneNumber().isEmpty()) {
                user.getPerson().setPhoneNumber(dbUser.getPerson().getPhoneNumber());
            }
        }
        user.setConfirm(true);
        userService.save(user);
        return "redirect:/startPage.html";
    }

    @GetMapping("/editAddress.html")
    public String editAddressGet(@RequestParam(name = "id", required = false) final Long id, final Authentication authentication, final Model model) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Address address = addressService.getAddress(id);
        if (id != null &&
                (user.getPerson() == null || user.getPerson().getAddresses() == null ||
                        user.getPerson().getAddresses().isEmpty() || !user.getPerson().getAddresses().contains(address))) {
            return "profile";
        } else {
            model.addAttribute("address", address);
            return "editAddress";
        }
    }

    @PostMapping("/editAddress.html")
    public String editAddressPost(@ModelAttribute("address") @Valid final Address address, final BindingResult bindingResult, final Authentication authentication) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Address dbAddress = addressService.getAddress(address.getId());
        if (dbAddress != null &&
                (user.getPerson() == null || user.getPerson().getAddresses() == null ||
                        user.getPerson().getAddresses().isEmpty() || !user.getPerson().getAddresses().contains(dbAddress))) {
            return "profile";
        } else {
            if(dbAddress == null) {
                if(user.getPerson().getAddresses() == null) {
                    user.getPerson().setAddresses(Collections.singletonList(address));
                } else {
                    user.getPerson().getAddresses().add(address);
                }
                userService.save(user);
            } else {
                addressService.save(address);
            }
            return "redirect:/profile.html";
        }
    }
}
