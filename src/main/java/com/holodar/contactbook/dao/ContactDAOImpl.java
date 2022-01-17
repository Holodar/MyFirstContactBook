package com.holodar.contactbook.dao;


import com.holodar.contactbook.data.CreateContactRequest;
import com.holodar.contactbook.data.UpdateContactRequest;
import com.holodar.contactbook.entity.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ContactDAOImpl implements ContactDAO {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ContactDAOImpl(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate=jdbcTemplate;
    }

    public List<Contact> findAll(){
        return jdbcTemplate.query("SELECT * FROM Contacts", new BeanPropertyRowMapper<>(Contact.class));
    }

    public Contact getContact(int id){
        return jdbcTemplate.query("SELECT * FROM Contacts WHERE id=?",new Object[]{id},new BeanPropertyRowMapper<>(Contact.class))
                .stream().findAny().orElse(null);
    }
    public void save(CreateContactRequest contact){
        jdbcTemplate.update("INSERT INTO Contacts(FIRST_NAME,SECOND_NAME,NUMBERS)VALUES(?,?,?)",contact.getFirstName(),contact.getSecondName(),contact.getNumbers());
    }

    public void update(UpdateContactRequest updateContact){
        jdbcTemplate.update("UPDATE Contacts SET FIRST_NAME=?,SECOND_NAME=?,NUMBERS=? WHERE id=?",updateContact.getFirstName(),updateContact.getSecondName(),updateContact.getNumbers(),updateContact.getId());
    }

    public void delete(int id){
        jdbcTemplate.update("DELETE FROM Contacts WHERE id=?",id);
    }


}
