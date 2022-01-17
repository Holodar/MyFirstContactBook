package com.holodar.contactbook.contollers;

import com.holodar.contactbook.data.CreateContactRequest;
import com.holodar.contactbook.data.UpdateContactRequest;
import com.holodar.contactbook.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;



@Controller

public class ContactController {


    public final ContactService contactService;

    @Autowired
    public ContactController(ContactService contactService) {
        this.contactService = contactService;
    }

    //index home page
    @GetMapping("/")
    public String show(Model model){
        model.addAttribute("contact",contactService.findAll());
        return "home";
    }

    //show {id} page
    @GetMapping("/{id}")
    public String showContact(@PathVariable("id") int id,Model model){
        model.addAttribute("contact",contactService.getContact(id));
        return "show";
    }

    //create new contact
    @GetMapping("/new")
    public String showNewContact(@ModelAttribute("contact") CreateContactRequest createContactRequest, Model model){
        model.addAttribute("add",true);
        return "new-edit";
    }
    @PostMapping("/new")
    public String addContact (@ModelAttribute("contact")CreateContactRequest createContactRequest, Model model){

        contactService.save(createContactRequest);
        model.addAttribute("add",true);
        return "redirect:/";
    }


    //edit contact
    @GetMapping("/{id}/edit")
    public String showEditContact(Model model, @PathVariable("id") int id){
        model.addAttribute("add",false);
        model.addAttribute("contact", contactService.getContact(id));
        return "new-edit";
    }
    @PostMapping("/{id}/edit")
    public String update(@ModelAttribute("contact") UpdateContactRequest updateContactRequest, Model model){
        contactService.update(updateContactRequest);
        model.addAttribute("add",false);
        return "redirect:/";
    }



    //delete contact in {id}
    @PostMapping("/{id}")
    public String delete(@PathVariable("id")int id){
        contactService.delete(id);
        return "redirect:/";
    }
}
