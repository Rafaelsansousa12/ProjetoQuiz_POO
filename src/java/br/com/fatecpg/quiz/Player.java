/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Rafael Sousa
 */
public class Player {
    private String name;
    public static ArrayList<Player> players;

    public Player(String nome){
        this.setName(nome);
    }

    public static ArrayList<Player> getPlayers() {
        return players;
    }

    public static void setPlayers(Player p) {
        players.add(p);
    }

    //métodos getters e setters
    public String getNome() {
        return name;
    }

    public void setName(String nome) {
        this.name = nome;
    }
}

