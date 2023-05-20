package com.example.SushiBar.controllers;

import com.example.SushiBar.models.Basket;
import com.example.SushiBar.models.Sushi;
import com.example.SushiBar.repository.SushiRepository;
import com.example.SushiBar.services.BasketService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class BasketController {
    private final BasketService favouriteService;
    private final SushiRepository sushiRepository;

    @PostMapping("/favours/add/{id}")
    public String sushis(@PathVariable(value = "id") Long id) {
        Basket favourite = new Basket();
        Optional<Sushi> sushi = sushiRepository.findById(id);
        favourite.setTitle(sushi.get().getTitle());
        favourite.setPrice(sushi.get().getPrice());
        favouriteService.saveSushi(favourite);
        return "redirect:/";
    }

    @GetMapping("/favours")
    public String favSushis(Model model) {
        model.addAttribute("favSushis", favouriteService.favouriteList());
        return "basket";
    }

    @PostMapping("favours/delete/{id}")
    public String deleteFavourite(@PathVariable Long id) {
        favouriteService.deleteSushi(id);
        return "redirect:/favours";
    }

}
