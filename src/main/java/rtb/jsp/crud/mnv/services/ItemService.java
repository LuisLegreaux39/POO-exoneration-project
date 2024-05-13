/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.services;

import java.util.List;
import rtb.jsp.crud.mnv.dao.ItemDao;
import rtb.jsp.crud.mnv.model.Item;

/**
 *
 * @author PC
 */
public class ItemService {

    ItemDao dao = new ItemDao();

    public List<Item> getAllItems() {
        return this.dao.findAll();
    }
    
    public Item getItem(int itemId){
        return this.dao.findById(itemId);
    }
    
    public List<Item> getSuggestions(){
        return this.dao.findRandom(4);
    }

}
