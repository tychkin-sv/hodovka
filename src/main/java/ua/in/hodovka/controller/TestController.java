package ua.in.hodovka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import ua.in.hodovka.model.ItemModelTest;
import ua.in.hodovka.service.IServiceTest;

import java.util.List;

@RestController
@RequestMapping("/test")
public class TestController {

    @Autowired(required = true)
    @Qualifier(value = "serviceTest")
    private IServiceTest service;


    public void setTestService(IServiceTest service) {
        this.service = service;
    }


    @RequestMapping(value = "/getList", method = RequestMethod.GET, produces = "application/json")
    public List<ItemModelTest> getAll(){

        return service.getList();
    }

}
