package ua.in.hodovka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.in.hodovka.model.Category;
import ua.in.hodovka.service.ICategoryService;


@Controller
@RequestMapping("/categories")
public class CategoryController {

    private ICategoryService categoryService;

    @Autowired(required = true)
    @Qualifier(value = "categoryService")
    public void setCategoryService(ICategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @RequestMapping("/list")
    public String aboutUs(Model model) {
        model.addAttribute("user", new Category());
        model.addAttribute("list", this.categoryService.getList());
        return "categories";
    }

}
