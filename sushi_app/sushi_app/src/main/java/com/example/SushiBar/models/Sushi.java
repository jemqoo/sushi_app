package com.example.SushiBar.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="sushi")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sushi {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;
    @Column(name="title")
    private String title;
    @Column(name = "description")
    private String description;
    @Column(name="price")
    private int price;
}
