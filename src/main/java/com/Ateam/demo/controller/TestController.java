package com.Ateam.demo.controller;

import ch.qos.logback.classic.Logger;
import lombok.RequiredArgsConstructor;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TestController {
    @GetMapping("/hello")
    public String hello(String name, Model model) {
        //http://localhost:8080/hello?name=karim
        model.addAttribute("name", name);
        //logger.info("{} => {}", "name", name);
        //html 이름
        return "hello";
    }
}