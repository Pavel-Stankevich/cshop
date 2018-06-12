package by.vstu.cshop.controller;

import by.vstu.cshop.model.Address;
import by.vstu.cshop.model.Sale;
import by.vstu.cshop.model.SaleProduct;
import by.vstu.cshop.model.SaleStatus;
import by.vstu.cshop.model.Supply;
import by.vstu.cshop.model.User;
import by.vstu.cshop.service.AddressService;
import by.vstu.cshop.service.SaleService;
import by.vstu.cshop.service.SupplyService;
import by.vstu.cshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

@Controller
public class CartController {

    @Autowired
    private UserService userService;
    @Autowired
    private SaleService saleService;
    @Autowired
    private SupplyService supplyService;
    @Autowired
    private AddressService addressService;

    @Transactional
    @ResponseBody
    @GetMapping("/addToCart.html")
    public String addToCart(@RequestParam("id") final Long supplyId, final Authentication authentication) {
        final Supply supply = supplyService.getSupply(supplyId);
        if (supply != null && supply.getBalance() > 0) {
            final User user = userService.getUserByEmail(authentication.getName());
            final Sale cart = saleService.getCart(user);
            Optional<SaleProduct> optionalSaleProduct = cart.getProducts().stream().filter(val -> val.getSupply().equals(supply)).findFirst();
            if (optionalSaleProduct.isPresent()) {
                if ((supply.getBalance() - optionalSaleProduct.get().getCount()) > 0) {
                    optionalSaleProduct.get().setCount(optionalSaleProduct.get().getCount() + 1);
                } else {
                    return "false";
                }
            } else {
                final SaleProduct saleProduct = new SaleProduct();
                saleProduct.setSupply(supply);
                saleProduct.setCount(1);
                cart.getProducts().add(saleProduct);
                saleService.save(cart);
            }
            return "true";
        } else {
            return "false";
        }
    }

    @Transactional
    @ResponseBody
    @GetMapping("/cartSize.html")
    public String getCartSize(final Authentication authentication) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Sale cart = saleService.getCart(user);
        final AtomicInteger size = new AtomicInteger();
        cart.getProducts().forEach(val -> size.addAndGet(val.getCount()));
        return size.toString();
    }

    @Transactional
    @ResponseBody
    @GetMapping("/cartSum.html")
    public String getCartSum(final Authentication authentication) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Sale cart = saleService.getCart(user);
        final AtomicReference<BigDecimal> saleSum = new AtomicReference<>(BigDecimal.valueOf(0));
        cart.getProducts().forEach(val -> saleSum.set(saleSum.get().add(val.getSupply().getPrice().multiply(BigDecimal.valueOf(val.getCount())))));
        return saleSum.get().toPlainString();
    }

    @Transactional
    @ResponseBody
    @GetMapping("/updateCartSaleProductCount.html")
    public String updateCartSaleProductCount(@RequestParam("id") final Long supplyId, @RequestParam("count") final int count, final Authentication authentication) {
        final Supply supply = supplyService.getSupply(supplyId);
        final User user = userService.getUserByEmail(authentication.getName());
        final Sale cart = saleService.getCart(user);
        final Optional<SaleProduct> optionalSaleProduct = cart.getProducts().stream().filter(val -> val.getSupply().equals(supply)).findFirst();
        if (optionalSaleProduct.isPresent() && optionalSaleProduct.get().getSupply().getBalance() > 0 && optionalSaleProduct.get().getSupply().getBalance() - count >= 0) {
            optionalSaleProduct.get().setCount(count);
            saleService.save(cart);
            return optionalSaleProduct.get().getCount().toString();
        } else {
            optionalSaleProduct.ifPresent(saleProduct -> saleProduct.setCount(0));
        }
        return "-1";
    }

    @Transactional
    @GetMapping("/shoppingCart.html")
    public String shoppingCart(final Authentication authentication, final Model model) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Sale cart = saleService.getCart(user);
        cart.getProducts().forEach(val -> val.getSupply().getProduct());
        model.addAttribute("products", cart.getProducts());
        model.addAttribute("addresses", user.getPerson().getAddresses());
        return "shoppingCart";
    }

    @Transactional
    @ResponseBody
    @PostMapping("/buy.html")
    public String buy(@RequestParam("addressId") final Long addressId, final Authentication authentication) {
        final User user = userService.getUserByEmail(authentication.getName());
        final Address address = addressService.getAddress(addressId);
        long count = user.getPerson().getAddresses().stream().filter(val -> val.equals(address)).count();
        final Sale cart = saleService.getCart(user);
        if (count > 0 && (cart.getProducts().isEmpty() || cart.getProducts().stream().mapToInt(SaleProduct::getCount).sum() > 0)) {
            cart.setAddress(address);
            saleService.updateSaleStatus(cart, SaleStatus.CONFIRMATION);
            return "true";
        }
        return "false";
    }
}
