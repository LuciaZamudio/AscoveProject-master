package com.ascove.model.members;

import com.ascove.model.Committees.BeanComm;

public class BeanMembers {
    private int idMember;
    private String name;
    private String lastname;
    private String motherlastname;
    private String street;
    private String suburb;
    private String email;
    private BeanComm CommitBelong;
    private BeanComm enlaces;

    public BeanMembers() {
    }

    public BeanMembers(int idMember, String name, String lastname, String motherlastname, String street, String suburb, String email, BeanComm commitBelong, BeanComm enlaces) {
        this.idMember = idMember;
        this.name = name;
        this.lastname = lastname;
        this.motherlastname = motherlastname;
        this.street = street;
        this.suburb = suburb;
        this.email = email;
        CommitBelong = commitBelong;
        this.enlaces = enlaces;
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BeanComm getCommitBelong() {
        return CommitBelong;
    }

    public void setCommitBelong(BeanComm commitBelong) {
        CommitBelong = commitBelong;
    }

    public BeanComm getEnlaces() {
        return enlaces;
    }

    public void setEnlaces(BeanComm enlaces) {
        this.enlaces = enlaces;
    }
}
