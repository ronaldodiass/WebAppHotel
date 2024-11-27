/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao;

import model.Hospede;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import util.ConectaDB;
/**
 *
 * @author alunocmc
 */
public class HospedeDAO {
   //Atributos
    // Sem atributos
    
    //Métodos
   public boolean insHosp(Hospede h_hosp) throws ClassNotFoundException {
        //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();
                             
                        
            String sql = "INSERT INTO hospedes(quarto, nome, tel, cpf, convidados, adicionais) VALUES ('" + h_hosp.getQuarto()+
                                                                                    "','" + h_hosp.getNome()+
                                                                                    "','" + h_hosp.getTel()+
                                                                                    "', '" + h_hosp.getCpf() + 
                                                                                    "'," + h_hosp.getConvidados() + 
                                                                                    "," + h_hosp.getAdicionais() + ")";
                         
            stmt.executeUpdate(sql); // Executa a instrução SQL
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    }  
    
   public Hospede consHospCpf(Hospede hospede) throws ClassNotFoundException{
    //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from hospedes where cpf = '" + hospede.getCpf() + "'";
            ResultSet rs = stmt.executeQuery(sql); //GO - Executar - Select
            
            int n_reg = 0;
            while (rs.next()) {   
                hospede.setQuarto(Integer.parseInt(rs.getString("quarto")));  
                hospede.setNome(rs.getString("nome"));  
                hospede.setTel(rs.getString("tel"));                
                hospede.setCpf(rs.getString("cpf"));                
                hospede.setConvidados( Integer.parseInt(rs.getString("convidados")));                
                hospede.setAdicionais( Double.parseDouble(rs.getString("adicionais")));                 
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return hospede;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    }   

   public Hospede consHospRegCpf(Hospede hospede) throws ClassNotFoundException{
    //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from hospedes where cpf = '" + hospede.getCpf()+ "'";
            ResultSet rs = stmt.executeQuery(sql); //GO - Executar - Select
            
            int n_reg = 0;
            while (rs.next()) {                 
                hospede.setQuarto(Integer.parseInt(rs.getString("quarto")));  
                hospede.setNome(rs.getString("nome"));  
                hospede.setTel( rs.getString("tel"));                
                hospede.setCpf( rs.getString("cpf"));                
                hospede.setConvidados( Integer.parseInt(rs.getString("convidados")));                
                hospede.setAdicionais( Double.parseDouble(rs.getString("adicionais")));                 
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return hospede;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    } 
  
   public List consHospLista() throws ClassNotFoundException{
    //Connectar
        List lista = new ArrayList();
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "SELECT * from hospedes";
            ResultSet rs = stmt.executeQuery(sql); //GO - Executar - Select
            
            int n_reg = 0;
            while (rs.next()) {                 
                Hospede hospede = new Hospede();
                hospede.setQuarto(Integer.parseInt(rs.getString("quarto")));  
                hospede.setNome(rs.getString("nome"));  
                hospede.setTel(rs.getString("tel"));                
                hospede.setCpf(rs.getString("cpf"));                
                hospede.setConvidados( Integer.parseInt(rs.getString("convidados")));                
                hospede.setAdicionais( Double.parseDouble(rs.getString("adicionais")));                 
                n_reg++;
                lista.add(hospede);
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return lista;
            }
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return null;
        }
    }   
   
   public boolean delHospCpf(Hospede hospede) throws ClassNotFoundException{
    //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();                                   
                        
            String sql = "DELETE from hospedes where cpf = " + hospede.getCpf();
            stmt.executeUpdate(sql);            
            conexao.close();            
            return true;
            
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    } 
   
   public boolean altHosp(Hospede h_hosp) throws ClassNotFoundException {
        //Connectar
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar(); // Abre a conexão
            Statement stmt = conexao.createStatement();
                                             
            String sql = "UPDATE hospedes SET quarto='" + h_hosp.getQuarto()+ "'" +
                                                    ", nome='" + h_hosp.getNome()+ "'" +
                                                    ", tel='" + h_hosp.getTel() + "'" +
                                                    ", convidados=" + h_hosp.getConvidados()+ 
                                                    ", adicionais=" +h_hosp.getAdicionais() + " WHERE cpf = " + h_hosp.getCpf();
                         
            stmt.executeUpdate(sql);
                        
            conexao.close();
            return true;
        }catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }                 
    } 
}
