/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package rtb.jsp.crud.mnv.constants;

/**
 *
 * @author PC
 */
public enum Routes {
    
    HOME("vistas/Pages/Home/Home.jsp"),
    LOGIN("vistas/Pages/Login/Login.jsp"),

    CUSTOMER_ADD("vistas/Customer/add.jsp"),
    CUSTOMER_LIST("vistas/Pages/Customer/Customer.jsp"),
    CUSTOMER_SHIP_LIST("vistas/Pages/Customer/Ship-list.jsp"),
    
    SHIPMENTS("vistas/Pages/Shipments/Shipments.jsp");

        
    String value;
    
    private Routes(String value){
        this.value = value;
    }
    
    public String getValue(){
        return this.value;
    }
    
}
