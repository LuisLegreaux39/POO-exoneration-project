/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.services;

import java.util.List;
import rtb.jsp.crud.mnv.dao.ShipmentsDao;
import rtb.jsp.crud.mnv.model.Item;

/**
 *
 * @author PC
 */
public class ShipmentService {
    ShipmentsDao dao = new ShipmentsDao();
    
    public boolean buyItem(int userId, int itemId , int amount){
        this.dao.addShipment(userId, itemId, amount);
        return true;
    }
    
    public List<Item> getCustomerShipments(int customerId){
        return this.dao.findCustomerShipList(customerId);
    }
}
