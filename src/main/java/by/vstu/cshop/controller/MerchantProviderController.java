package by.vstu.cshop.controller;

import by.vstu.cshop.model.Provider;
import by.vstu.cshop.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class MerchantProviderController {

    @Autowired
    private ProviderService providerService;

    @GetMapping("/merchant/providers.html")
    public String providers(final Model model) {
        model.addAttribute("providers", providerService.getProviders());
        return "merchant/providers";
    }

    @GetMapping("/merchant/editProvider.html")
    public String editProviderGet(@RequestParam(name = "id", required = false) final Long id, final Model model) {
        model.addAttribute("provider", providerService.getProvider(id));
        return "merchant/editProvider";
    }

    @PostMapping("/merchant/editProvider.html")
    public String editProviderPost(@ModelAttribute("provider") @Valid final Provider provider, final BindingResult result, final Model model) {
        providerService.save(provider);
        return "redirect:/merchant/providers.html";
    }
}
