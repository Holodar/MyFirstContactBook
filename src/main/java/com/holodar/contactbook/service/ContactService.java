package com.holodar.contactbook.service;

import com.holodar.contactbook.data.CreateContactRequest;
import com.holodar.contactbook.data.UpdateContactRequest;
import com.holodar.contactbook.entity.Contact;

import java.util.List;

public interface ContactService {

    List<Contact> findAll();

    Contact getContact(int id);

    void save(CreateContactRequest createContactRequest);

    void update(UpdateContactRequest updateContactRequest);

    void delete(int id);
}
