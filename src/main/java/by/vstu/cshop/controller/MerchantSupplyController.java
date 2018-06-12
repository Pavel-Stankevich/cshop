package by.vstu.cshop.controller;

import by.vstu.cshop.model.Supply;
import by.vstu.cshop.model.User;
import by.vstu.cshop.service.ProductService;
import by.vstu.cshop.service.ProviderService;
import by.vstu.cshop.service.SupplyService;
import by.vstu.cshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class MerchantSupplyController {

    @Autowired
    private SupplyService supplyService;
    @Autowired
    private ProviderService providerService;
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;

    @GetMapping("/merchant/supplies.html")
    public String supplies(final Model model) {
        model.addAttribute("supplies", supplyService.getSupplies());
        return "merchant/supplies";
    }

    @GetMapping("/merchant/editSupply.html")
    public String editSupplyGet(@RequestParam(name = "id", required = false) final Long id, final Model model) {
        final Supply dbSupply = supplyService.getSupply(id);
        if (dbSupply != null && dbSupply.isClose()) {
            return "redirect:/merchant/supplies.html";
        }

        model.addAttribute("supply", supplyService.getSupply(id));
        model.addAttribute("providers", providerService.getProviders());
        model.addAttribute("products", productService.getProducts());
        return "merchant/editSupply";
    }

    @PostMapping("/merchant/editSupply.html")
    public String editSupplyPost(@ModelAttribute("supply") @Valid final Supply supply, final BindingResult result, final Authentication authentication) {
        final Supply dbSupply = supplyService.getSupply(supply.getId());
        if (dbSupply != null && dbSupply.isClose()) {
            return "redirect:/merchant/supplies.html";
        }

        final User merchant = userService.getUserByEmail(authentication.getName());
        supply.setMerchant(merchant);
        supply.setClose(false);
        supplyService.save(supply);
        return "redirect:/merchant/supplies.html";
    }

    @RequestMapping("/merchant/closeSupply.html")
    public String closeSupply(@RequestParam("id") final Long id) {
        supplyService.closeSupply(id);
        return "redirect:/merchant/supplies.html";
    }
}
