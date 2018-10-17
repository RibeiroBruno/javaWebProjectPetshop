/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author bruno
 */
public class Mysql {
    private final String driver = "com.mysql.jdbc.Driver";
    private final String endpoint = "javawebproject.ckfhxxt08ybd.sa-east-1.rds.amazonaws.com";
    private final String port = "3306";
    private final String database = "javaWebProjectForms";
    private final String user = "brunoribeiro";
    private final String password = "kiOlToIO";
    private final String path = String.format("jdbc:mysql://%s:%s/%s", getEndpoint(), getPort(), getDatabase());
    private Connection conexao;
    private PreparedStatement st;
    
    public boolean conectar() {
        try {
            Class.forName(getDriver());
            setConexao(DriverManager.getConnection(getPath(), "brunoribeiro", "kiOlToIO"));   
            return true;
        } catch (SQLException | ClassNotFoundException ex) {
            return false;
        }
    }
    
    public void desconectar() {
        try {
            getConexao().close();   
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
    
    public boolean createStatement(String sql) {
        try {
            setSt(getConexao().prepareStatement(sql));
            return true;
        } catch (Exception ex) {
            String erro = ex.getMessage();
            return false;
        } finally {
            String error = "erro";
        }
    }   

    /**
     * @return the conexao
     */
    public Connection getConexao() {
        return conexao;
    }

    /**
     * @param conexao the conexao to set
     */
    public void setConexao(Connection conexao) {
        this.conexao = conexao;
    }

    /**
     * @return the st
     */
    public PreparedStatement getSt() {
        return st;
    }

    /**
     * @param st the st to set
     */
    public void setSt(PreparedStatement st) {
        this.st = st;
    }

    /**
     * @return the driver
     */
    public String getDriver() {
        return driver;
    }

    /**
     * @return the endpoint
     */
    public String getEndpoint() {
        return endpoint;
    }

    /**
     * @return the port
     */
    public String getPort() {
        return port;
    }

    /**
     * @return the database
     */
    public String getDatabase() {
        return database;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @return the path
     */
    public String getPath() {
        return path;
    }    
}
