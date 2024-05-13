/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.services;

import java.util.List;
import rtb.jsp.crud.mnv.dao.CustomerDao;
import rtb.jsp.crud.mnv.model.Customer;

/**
 *
 * @author PC
 */
public class CustomerService {

    CustomerDao dao = new CustomerDao();

    public List<Customer> getAllCustomers() {
        return this.dao.findAll();
            
    }
    
}
