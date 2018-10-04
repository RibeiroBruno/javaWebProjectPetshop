/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Connection.Mysql;
import Model.Pet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author internet
 */
public class PetDAO {
    private final Pet pet = new Pet();
    private final Mysql mysql = new Mysql();
    
    public void generateParams(HttpServletRequest request) {
        UUID uuid = UUID.randomUUID();
        String petId = uuid.toString();
        
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String dataAtual = dtf.format(now);
        this.getPet().setCreatedAt(dataAtual);
        this.getPet().setUpdatedAt(dataAtual);
        
        String nomeDono = request.getParameter("nomeDono");
        String petName = request.getParameter("petName");
        String petCategoria = request.getParameter("petCategoria");
        String raca = request.getParameter("raca");
        String petCor = request.getParameter("petCor");
        String petPesoReq = request.getParameter("petPeso");
        float petPeso = Float.parseFloat(petPesoReq);
        String petDtNasc = request.getParameter("petDtNasc");
        String sexo = request.getParameter("sexo");
        String adocaoReq = request.getParameter("adocao");
        boolean adocao;
        if (adocaoReq != null) adocao = true;
        else adocao = false;
        
        this.getPet().setPetId(petId);
        this.getPet().setNomeDono(nomeDono);
        this.getPet().setPetName(petName);
        this.getPet().setPetCategoria(petCategoria);
        this.getPet().setRaca(raca);
        this.getPet().setPetCor(petCor);
        this.getPet().setPetPeso(petPeso);
        this.getPet().setPetDtNasc(petDtNasc);
        this.getPet().setSexo(sexo);
        this.getPet().setAdocao(adocao);
        this.getPet().setCreatedAt(dataAtual);
        this.getPet().setUpdatedAt(dataAtual);
        this.getPet().setDeleted(false);
    }
    
    public boolean saveData() {
        boolean result = this.getMysql().conectar();
        if(!result) return false;
        
        String sql = "INSERT INTO `javaWebProjectPetshop`.`pet` "
                + "(`petId`, `nomeDono`, `petName`, `petCategoria`, `raca`, "
                + "`petCor`, `petDtNasc`, `sexo`, `petPeso`, `adocao`, "
                + "`createdAt`, `updatedAt`, `deleted`) "
                + " VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
        
        try {
            if (!this.getMysql().createStatement(sql)) return false;
            this.getMysql()
                    .getSt()
                    .setString(1, this.getPet().getPetId());
            this.getMysql()
                    .getSt()
                    .setString(2, this.getPet().getNomeDono());
            this.getMysql()
                    .getSt()
                    .setString(3, this.getPet().getPetName());
            this.getMysql()
                    .getSt()
                    .setString(4, this.getPet().getPetCategoria());
            this.getMysql()
                    .getSt()
                    .setString(5, this.getPet().getRaca());
            this.getMysql()
                    .getSt()
                    .setString(6, this.getPet().getPetCor());
            this.getMysql()
                    .getSt()
                    .setString(7, this.getPet().getPetDtNasc());
            this.getMysql()
                    .getSt()
                    .setString(8, this.getPet().getSexo());
            this.getMysql()
                    .getSt()
                    .setFloat(9, this.getPet().getPetPeso());
            this.getMysql()
                    .getSt()
                    .setBoolean(10, this.getPet().isAdocao());
            this.getMysql()
                    .getSt()
                    .setString(11, this.getPet().getCreatedAt());
            this.getMysql()
                    .getSt()
                    .setString(12, this.getPet().getUpdatedAt());
            this.getMysql()
                    .getSt()
                    .setBoolean(13, this.getPet().isDeleted());
            
            this.getMysql()
                    .getSt()
                    .execute();
            this.getMysql()
                    .desconectar();
            
            return true;
        } catch(SQLException ex) {
            int CodErro = ex.getErrorCode();
            String msgErro = ex.getMessage();
            System.out.println(msgErro);
            return false;
        } catch (Exception ex) {
            String msgErro = ex.getMessage();
            System.out.println(msgErro);
            return false;
        }
    }

    /**
     * @return the pet
     */
    public Pet getPet() {
        return pet;
    }

    /**
     * @return the mysql
     */
    public Mysql getMysql() {
        return mysql;
    }
}
