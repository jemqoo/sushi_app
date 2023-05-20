package com.example.SushiBar.repository;

import com.example.SushiBar.models.Sushi;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SushiRepository extends JpaRepository<Sushi, Long> {
    List<Sushi> findSushiByTitle(String title);

}
