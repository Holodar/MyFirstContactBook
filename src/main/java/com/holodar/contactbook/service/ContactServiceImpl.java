package com.holodar.contactbook.service;

import com.holodar.contactbook.dao.ContactDAO;
import com.holodar.contactbook.data.CreateContactRequest;
import com.holodar.contactbook.data.UpdateContactRequest;
import com.holodar.contactbook.entity.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactServiceImpl  implements ContactService{

    public final ContactDAO contactDAO;

    @Autowired
    public ContactServiceImpl(ContactDAO contactDAO) {
        this.contactDAO = contactDAO;
    }


    @Override
    public List<Contact> findAll() {
       return contactDAO.findAll();
    }

    @Override
    public Contact getContact(int id) {
        return contactDAO.getContact(id);
    }

    @Override
    public void save(CreateContactRequest createContactRequest) {
        contactDAO.save(createContactRequest);
    }

    @Override
    public void update(UpdateContactRequest updateContact) {
        contactDAO.update(updateContact);

    }

    @Override
    public void delete(int id) {
        contactDAO.delete(id);
    }
}
