/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.services;

import rtb.jsp.crud.mnv.dao.CustomerDao;
import rtb.jsp.crud.mnv.model.Customer;

/**
 *
 * @author PC
 */
public class AuthenticationService {

    CustomerDao customerDao = new CustomerDao();
    
    public Customer doesUserExits(String userName) {
        return customerDao.userExist(userName);
    }
}
