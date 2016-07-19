/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inf.ufg.webagenda.dao;

import inf.ufg.webagenda.entity.Contact;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author John
 */
public interface IContactDao<T extends Serializable> {
    
    void save(Contact contact);
    
    List<Contact> findAll();
    
    Contact findByName(String firstName, String lastName);
    
    List<Contact> findByFirstName(String firstName);
}