package com.infosys.r2w.usermgmtsvc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseController {

    @GetMapping("/")
    public String handleError() {
        return "Service started";
    }

}
