package com.model;


public class Employee {

    public String id;
    public String name;
    public String dob;
    public String exp;
    public String designation;

    public Employee(String id, String name, String dob, String exp, String designation) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.exp = exp;
        this.designation = designation;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getExp() {
        return exp;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

}
