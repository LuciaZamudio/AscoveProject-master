package com.ascove.model.Committees;

import com.ascove.model.enlaces.BeanEnlaces;

public class BeanComm {
    private int idCommittees;
    private String municipality;
    private String suburb;
    private BeanEnlaces enlaces;

    public BeanComm() {
    }

    public BeanComm(int idCommittees, String municipality, String suburb, BeanEnlaces enlaces) {
        this.idCommittees = idCommittees;
        this.municipality = municipality;
        this.suburb = suburb;
        this.enlaces = enlaces;
    }

    public int getIdCommittees() {
        return idCommittees;
    }

    public void setIdCommittees(int idCommittees) {
        this.idCommittees = idCommittees;
    }

    public String getMunicipality() {
        return municipality;
    }

    public void setMunicipality(String municipality) {
        this.municipality = municipality;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public BeanEnlaces getEnlaces() {
        return enlaces;
    }

    public void setEnlaces(BeanEnlaces enlaces) {
        this.enlaces = enlaces;
    }
}
