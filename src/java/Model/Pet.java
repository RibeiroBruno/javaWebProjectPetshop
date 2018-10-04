/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author internet
 */
public class Pet {
    private String petId;
    private String nomeDono;
    private String petName;
    private String petCategoria;
    private String raca;
    private String petCor;
    private String petDtNasc;
    private String sexo;
    private String createdAt;
    private String updatedAt;
    private float petPeso;
    private boolean adocao;
    private boolean deleted;

    /**
     * @return the nomeDono
     */
    public String getNomeDono() {
        return nomeDono;
    }

    /**
     * @param nomeDono the nomeDono to set
     */
    public void setNomeDono(String nomeDono) {
        this.nomeDono = nomeDono;
    }

    /**
     * @return the petName
     */
    public String getPetName() {
        return petName;
    }

    /**
     * @param petName the petName to set
     */
    public void setPetName(String petName) {
        this.petName = petName;
    }

    /**
     * @return the petCategoria
     */
    public String getPetCategoria() {
        return petCategoria;
    }

    /**
     * @param petCategoria the petCategoria to set
     */
    public void setPetCategoria(String petCategoria) {
        this.petCategoria = petCategoria;
    }

    /**
     * @return the raca
     */
    public String getRaca() {
        return raca;
    }

    /**
     * @param raca the raca to set
     */
    public void setRaca(String raca) {
        this.raca = raca;
    }

    /**
     * @return the petCor
     */
    public String getPetCor() {
        return petCor;
    }

    /**
     * @param petCor the petCor to set
     */
    public void setPetCor(String petCor) {
        this.petCor = petCor;
    }

    /**
     * @return the petDtNasc
     */
    public String getPetDtNasc() {
        return petDtNasc;
    }

    /**
     * @param petDtNasc the petDtNasc to set
     */
    public void setPetDtNasc(String petDtNasc) {
        this.petDtNasc = petDtNasc;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the createdAt
     */
    public String getCreatedAt() {
        return createdAt;
    }

    /**
     * @param createdAt the createdAt to set
     */
    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    /**
     * @return the updatedAt
     */
    public String getUpdatedAt() {
        return updatedAt;
    }

    /**
     * @param updatedAt the updatedAt to set
     */
    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    /**
     * @return the petPeso
     */
    public float getPetPeso() {
        return petPeso;
    }

    /**
     * @param petPeso the petPeso to set
     */
    public void setPetPeso(float petPeso) {
        this.petPeso = petPeso;
    }

    /**
     * @return the adocao
     */
    public boolean isAdocao() {
        return adocao;
    }

    /**
     * @param adocao the adocao to set
     */
    public void setAdocao(boolean adocao) {
        this.adocao = adocao;
    }

    /**
     * @return the deletedAt
     */
    public boolean isDeleted() {
        return deleted;
    }

    /**
     * @param deletedAt the deletedAt to set
     */
    public void setDeleted(boolean deletedAt) {
        this.deleted = deleted;
    }

    /**
     * @return the petId
     */
    public String getPetId() {
        return petId;
    }

    /**
     * @param petId the petId to set
     */
    public void setPetId(String petId) {
        this.petId = petId;
    }
}
