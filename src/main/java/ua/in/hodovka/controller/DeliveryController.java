package ua.in.hodovka.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeliveryController {


    @RequestMapping("/delivery")
    public String aboutUs(Model model) {
        return "delivery";
    }
}
