
package com.replit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class HomeController {
    @GetMapping({"/", "/index"})
    public String index(Map<String,Object> model) {
        model.put("title", "Home");
        model.put("heading", "Welcome to Replit Spring Boot + Thymeleaf");
        model.put("now", java.time.ZonedDateTime.now());
        return "index"; // Will render templates/index.html
    }
}
