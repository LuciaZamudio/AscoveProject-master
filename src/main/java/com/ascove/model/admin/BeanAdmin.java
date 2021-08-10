package com.ascove.model.admin;

public class BeanAdmin {
    private int idAdmin;
    private String name;
    private String lastname;
    private String motherlastname;
    private String street;
    private String suburb;
    private String municipality;
    private String email;
    private String password;

    public BeanAdmin() {
    }

    public BeanAdmin(int idAdmin, String name, String lastname, String motherlastname, String street, String suburb, String municipality, String email, String password) {
        this.idAdmin = idAdmin;
        this.name = name;
        this.lastname = lastname;
        this.motherlastname = motherlastname;
        this.street = street;
        this.suburb = suburb;
        this.municipality = municipality;
        this.email = email;
        this.password = password;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
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
