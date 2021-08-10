package com.ascove.model.enlaces;

public class BeanEnlaces {
    private int idEnl;
    private String name;
    private String lastname;
    private String motherlastname;
    private String street;
    private String suburb;
    private String municipality;
    private int numberfon;
    private String email;
    private String password;

    public BeanEnlaces() {
    }

    public BeanEnlaces(int idEnl, String name, String lastname, String motherlastname, String street, String suburb, String municipality, int numberfon, String email, String password) {
        this.idEnl = idEnl;
        this.name = name;
        this.lastname = lastname;
        this.motherlastname = motherlastname;
        this.street = street;
        this.suburb = suburb;
        this.municipality = municipality;
        this.numberfon = numberfon;
        this.email = email;
        this.password = password;
    }

    public int getIdEnl() {
        return idEnl;
    }

    public void setIdEnl(int idEnl) {
        this.idEnl = idEnl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMotherlastname() {
        return motherlastname;
    }

    public void setMotherlastname(String motherlastname) {
        this.motherlastname = motherlastname;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public String getMunicipality() {
        return municipality;
    }

    public void setMunicipality(String municipality) {
        this.municipality = municipality;
    }

    public int getNumberfon() {
        return numberfon;
    }

    public void setNumberfon(int numberfon) {
        this.numberfon = numberfon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
