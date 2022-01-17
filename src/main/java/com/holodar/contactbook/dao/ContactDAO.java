package com.holodar.contactbook.dao;

import com.holodar.contactbook.data.CreateContactRequest;
import com.holodar.contactbook.data.UpdateContactRequest;
import com.holodar.contactbook.entity.Contact;

import java.util.List;

public interface ContactDAO {

    List<Contact> findAll();

    Contact getContact(int id);

    void save(CreateContactRequest contact);

    void update(UpdateContactRequest updateContactRequest);

    void delete(int id);

}
