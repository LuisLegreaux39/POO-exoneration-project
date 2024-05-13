/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import rtb.jsp.crud.mnv.Config.CConnection;
import rtb.jsp.crud.mnv.interfaces.Crud;
import rtb.jsp.crud.mnv.model.Item;

/**
 *
 * @author PC
 */
public class ItemDao implements Crud<Item> {

    CConnection cn = new CConnection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Item> findAll() {
        ArrayList<Item> list = new ArrayList<>();
        String sql = "select * from item";

        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPhoto(rs.getString("photo"));
                item.setPrice(rs.getString("price"));
                item.setType(rs.getString("type"));
                list.add(item);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    @Override
    public Item findById(int id) {
        String sql = "select * from item where id=" + id;
        System.out.println(sql);
        Item currentItem = new Item();
        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                currentItem.setId(rs.getInt("id"));
                currentItem.setName(rs.getString("name"));
                currentItem.setPhoto(rs.getString("photo"));
                currentItem.setPrice(rs.getString("price"));
                currentItem.setType(rs.getString("type"));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return currentItem;
    }

    public List<Item> findRandom(int amount) {
        ArrayList<Item> list = new ArrayList<>();
        String sql = "SELECT * FROM item ORDER BY RAND() LIMIT " + amount;

        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPhoto(rs.getString("photo"));
                item.setPrice(rs.getString("price"));
                item.setType(rs.getString("type"));
                list.add(item);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    @Override
    public boolean add(Item record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Item record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean deleteById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
