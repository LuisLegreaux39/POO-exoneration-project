/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.services;

import static j2html.TagCreator.body;
import static j2html.TagCreator.div;
import static j2html.TagCreator.each;
import static j2html.TagCreator.h2;
import static j2html.TagCreator.head;
import static j2html.TagCreator.hr;
import static j2html.TagCreator.html;
import static j2html.TagCreator.link;
import static j2html.TagCreator.table;
import static j2html.TagCreator.td;
import static j2html.TagCreator.th;
import static j2html.TagCreator.title;
import static j2html.TagCreator.tr;
import j2html.tags.specialized.BodyTag;
import j2html.tags.specialized.TableTag;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import rtb.jsp.crud.mnv.dao.CustomerDao;
import rtb.jsp.crud.mnv.dao.ShipmentsDao;
import rtb.jsp.crud.mnv.model.Customer;

/**
 *
 * @author PC
 */
public class ReporteryService {
    
    ShipmentsDao shipmentDao = new ShipmentsDao();
    CustomerDao customerDao = new CustomerDao();
    
      protected String saveFile(String content) {
        String path = null;
        try {
            String fileName = "html-report.html";
            File newFile = new File(fileName);
            newFile.createNewFile();
            System.out.println(newFile.getAbsolutePath());
            path = newFile.getAbsolutePath();
            FileWriter file = new FileWriter(fileName);
            file.write(content);
            file.flush();
            file.close();

            System.out.println("Successfully wrote to the file");
        } catch (IOException e) {
            System.out.println("An error occurred.");
        }

        return path;
    }

    protected BodyTag buildTableForUser(int customer_id, String userName, String userIdentification) {

        double total = 0;

        var ship_list = this.shipmentDao.extractInformationForReport(customer_id);

        TableTag htmlTable = table().attr("class", "table").with(
                tr().with(
                        th("Fecha"), th("Vendedor"),
                        th("Tipo de compra"), th("Cantidad"),
                        th("Precio"), th("Item"), th("Monto")
                )
        );

        try {

            while (ship_list.next()) {

                double row_amount = ship_list.getInt("amount") * ship_list.getDouble("price");

                total = total + row_amount;

                htmlTable.with(
                        tr().with(
                                td(ship_list.getString("shipment_date")),
                                td(ship_list.getString("seller")),
                                td(ship_list.getString("type")),
                                td(ship_list.getString("amount")),
                                td(ship_list.getString("price")),
                                td(ship_list.getString("itemName")),
                                td(String.valueOf(row_amount) + "$")
                        )
                );

            }
        } catch (SQLException e) {
            System.err.println(e);
        }

        var currentBody = body(
                hr(),
                div().attr("class", "container mt-5").with(
                        h2("Cedula : " + userIdentification + "  " + userName)
                ),
                div().attr("class", "container").with(htmlTable),
                div().attr("class", "container mt-5").with(
                        h2("Total : " + total + "$")
                ), hr()
        );

        return currentBody;

    }

    public String generateSingleUserReport(int customer_id, String userName, String userIdentification) {

        var page = html(
                head(
                        title("Title"),
                        link().withRel("stylesheet").withHref("https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/lux/bootstrap.min.css")
                ),
                this.buildTableForUser(customer_id, userName, userIdentification)
        );

        return this.saveFile(page.render());
    }

    public String generateAllUsersReport() {
        List<Customer> currentCustomers = this.customerDao.findAll();

        var page = html(
                head(
                        title("Title"),
                        link().withRel("stylesheet").withHref("https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/lux/bootstrap.min.css")
                ),
                each(currentCustomers, customer -> this.buildTableForUser(customer.getId(), customer.getName(), customer.getIdentification()))
        );

        return this.saveFile(page.render());
    }
}
