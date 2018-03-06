package ua.in.hodovka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ua.in.hodovka.model.Product;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {


    @RequestMapping("/list")
    public String getList(Model model) {
        return "product";
    }


    @RequestMapping("/list/{filters}")
    @ResponseBody
    public List<Product> getFilterList(Model model) {
        List result = new ArrayList<Product>();
        result.add(new Product());
        return result;
    }

}
