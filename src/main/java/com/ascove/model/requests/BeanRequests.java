package com.ascove.model.requests;

import com.ascove.model.Committees.BeanComm;

import java.io.File;

public class BeanRequests {
    private int numberrequest;
    private String assignedservice;
    private String descripcionrequest;
    private String statusrequest;
    private String datestart;
    private String dateclose;
    private File image;
    private BeanComm commitapplicant;
    private BeanComm enlace;

    public BeanRequests() {
    }

    public BeanRequests(int numberrequest, String assignedservice, String descripcionrequest, String statusrequest, String datestart, String dateclose, File image, BeanComm commitapplicant, BeanComm enlace) {
        this.numberrequest = numberrequest;
        this.assignedservice = assignedservice;
        this.descripcionrequest = descripcionrequest;
        this.statusrequest = statusrequest;
        this.datestart = datestart;
        this.dateclose = dateclose;
        this.image = image;
        this.commitapplicant = commitapplicant;
        this.enlace = enlace;
    }

    public int getNumberrequest() {
        return numberrequest;
    }

    public void setNumberrequest(int numberrequest) {
        this.numberrequest = numberrequest;
    }

    public String getAssignedservice() {
        return assignedservice;
    }

    public void setAssignedservice(String assignedservice) {
        this.assignedservice = assignedservice;
    }

    public String getDescripcionrequest() {
        return descripcionrequest;
    }

    public void setDescripcionrequest(String descripcionrequest) {
        this.descripcionrequest = descripcionrequest;
    }

    public String getStatusrequest() {
        return statusrequest;
    }

    public void setStatusrequest(String statusrequest) {
        this.statusrequest = statusrequest;
    }

    public String getDatestart() {
        return datestart;
    }

    public void setDatestart(String datestart) {
        this.datestart = datestart;
    }

    public String getDateclose() {
        return dateclose;
    }

    public void setDateclose(String dateclose) {
        this.dateclose = dateclose;
    }

    public File getImage() {
        return image;
    }

    public void setImage(File image) {
        this.image = image;
    }

    public BeanComm getCommitapplicant() {
        return commitapplicant;
    }

    public void setCommitapplicant(BeanComm commitapplicant) {
        this.commitapplicant = commitapplicant;
    }

    public BeanComm getEnlace() {
        return enlace;
    }

    public void setEnlace(BeanComm enlace) {
        this.enlace = enlace;
    }
}
