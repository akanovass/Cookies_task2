package com.example.cookies_task2;

public class User {
    private String name;
    private String surname;
    private int age;
    private String country;
    private String gender;
    private String creditCard;

    public User(){

    }
    public User(String name, String surname, int age, String country, String gender, String creditCard) {
        this.name = name;
        this.surname=surname;
        this.age= age;
        this.country=country;
        this.gender=gender;
        this.creditCard=creditCard;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(String creditCard) {
        this.creditCard = creditCard;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", age=" + age +
                ", country='" + country + '\'' +
                ", gender='" + gender + '\'' +
                ", creditCard='" + creditCard + '\'' +
                '}';
    }
}
