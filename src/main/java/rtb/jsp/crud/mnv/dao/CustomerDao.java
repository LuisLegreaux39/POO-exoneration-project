/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.dao;

import java.util.List;
import rtb.jsp.crud.mnv.interfaces.Crud;
import rtb.jsp.crud.mnv.model.Customer;
import rtb.jsp.crud.mnv.Config.CConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CustomerDao implements Crud<Customer> {

    CConnection cn = new CConnection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Customer> findAll() {
        ArrayList<Customer> list = new ArrayList<>();
        String sql = "select * from customer";

        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getInt("id"));
                customer.setName(rs.getString("name"));
                customer.setState(rs.getString("state"));
                customer.setIdentification(rs.getString("identification"));
                customer.setAddress(rs.getString("address"));
                customer.setGenre(rs.getString("genre"));

                list.add(customer);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public Customer userExist(String userName) {
        String sql = "select * from customer where name=" + "'" + userName + "'";
        System.out.println(sql);
        Customer customer = new Customer();
        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                customer.setId(rs.getInt("id"));
                customer.setName(rs.getString("name"));
                customer.setState(rs.getString("state"));
                customer.setIdentification(rs.getString("identification"));
                customer.setAddress(rs.getString("address"));
                customer.setGenre(rs.getString("genre"));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }

        return customer;
    }

    @Override
    public Customer findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Customer record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Customer record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean deleteById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
