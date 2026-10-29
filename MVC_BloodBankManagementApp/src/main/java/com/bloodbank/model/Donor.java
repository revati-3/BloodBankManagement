package com.bloodbank.model;

public class Donor {

    private int id;
    private String name;
    private String bloodGroup;
    private String mobile;
    private String email;
    private String city;

    public Donor() {
        super();
    }

    public Donor(int id, String name, String bloodGroup, String mobile, String email, String city) {
        super();
        this.id = id;
        this.name = name;
        this.bloodGroup = bloodGroup;
        this.mobile = mobile;
        this.email = email;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}