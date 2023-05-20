package com.example.SushiBar.services;

import com.example.SushiBar.models.Basket;
import com.example.SushiBar.repository.BasketRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j

public class BasketService {
    private final BasketRepository favouriteRepository;

    public void saveSushi(Basket favourite) {
        favouriteRepository.save(favourite);
    }

    public List<Basket> favouriteList() {
        return favouriteRepository.findAll();
    }

    public void deleteSushi(Long id) {
        favouriteRepository.deleteById(id);
    }
}