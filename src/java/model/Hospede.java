/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;
/**
 *
 * @author alunocmc
 */
public class Hospede {
    // Atributos 
    private int quarto;
    private String nome;
    private String tel;
    private String cpf;
    private int convidados;
    private double adicionais;       
    
    // Getters e Setters

    public void setQuarto(int quarto) {
        this.quarto = quarto;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setConvidados(int convidados) {
        this.convidados = convidados;
    }

    public void setAdicionais(double adicionais) {
        this.adicionais = adicionais;
    }

    public int getQuarto() {
        return quarto;
    }
    
    public String getNome() {
        return nome;
    }

    public String getTel() {
        return tel;
    }
    
    public String getCpf() {
        return cpf;
    }

    public int getConvidados() {
        return convidados;
    }

    public double getAdicionais() {
        return adicionais;
    }

}
