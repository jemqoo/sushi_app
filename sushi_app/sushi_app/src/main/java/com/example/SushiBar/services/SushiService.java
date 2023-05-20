package com.example.SushiBar.services;

import com.example.SushiBar.models.Sushi;
import com.example.SushiBar.repository.SushiRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class SushiService {
    private final SushiRepository sushiRepo;

    public List<Sushi> sushiList(String title) {
        if (title != null) return sushiRepo.findSushiByTitle(title);
        return sushiRepo.findAll();
    }

    public Sushi getSushiById(Long id) {
        return sushiRepo.findById(id).orElse(null);
    }
}
