package com.endeavour.encloud;

/**
 * Created by lee on 2017/4/2.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import com.mongodb.*;

public class Upload extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String deviceID=req.getParameter("deviceID");
        float temperature= Float.parseFloat(req.getParameter("temperature"));
        float moisture= Float.parseFloat(req.getParameter("moisture"));
        DataBean data=new DataBean();
        data.setDate(new Date());
        data.setDeviceID(deviceID);
        data.setTemperature(temperature);
        data.setMoisture(moisture);
        Mongo mg= new Mongo("localhost",27017);
        DB db=mg.getDB("Endeavour");
        DBCollection coll=db.getCollection("Endeavour");
        coll.insert(data);
        System.out.println("{deviceID:"+deviceID+";temperature:"+temperature+";moisture:"+moisture+"} saved.");
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("{deviceID:"+deviceID+";temperature:"+temperature+";moisture:"+moisture+"}&nbsp;saved.");
    }
}
