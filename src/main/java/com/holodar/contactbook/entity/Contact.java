package com.holodar.contactbook.entity;


import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Contact {

    private int id;

    @NotEmpty(message = "First name should not be empty.")
    @Size(min=3,max = 30, message = "First Name should be between 3 and 30 char")
    private String firstName;

    @NotEmpty(message = "Last name should not be empty.")
    @Size(min=3,max = 30, message = "Last Name should be between 3 and 30 char")
    private String secondName;

    @NotEmpty(message = "Number not empty")
    private String numbers;

    public Contact(int id, String firstName, String secondName, String numbers) {
        this.id = id;
        this.firstName = firstName;
        this.secondName = secondName;
        this.numbers = numbers;
    }
    public Contact(){
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getNumbers() {
        return numbers;
    }

    public void setNumbers(String numbers) {
        this.numbers = numbers;
    }
}
