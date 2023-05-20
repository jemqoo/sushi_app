package com.example.SushiBar.controllers;

import com.example.SushiBar.services.SushiService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class SushiController {
    private final SushiService sushiService;

    @GetMapping("/")
    public String sushis(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("sushis", sushiService.sushiList(title));
        return "sushis";
    }

    @GetMapping("/sushi/{id}")
    public String sushiInfo(@PathVariable Long id, Model model) {
        model.addAttribute("sushi", sushiService.getSushiById(id));
        return "sushi-info";
    }
}
