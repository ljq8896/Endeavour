package com.endeavour.encloud;

/**
 * Created by lee on 2017/4/5.
 */
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mongodb.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.*;

public class getData extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Mongo mg= new Mongo("localhost",27017);
        DB db=mg.getDB("Endeavour");
        DBCollection coll=db.getCollection("Endeavour");
//        System.out.println(coll.find().toString());
        PrintWriter out = resp.getWriter();
        DBObject result = null;
        DBCursor dbCursor = null;
        if (null != coll) {
            Set set=new HashSet();
            dbCursor = coll.find();
            while (null != dbCursor && dbCursor.hasNext()) {
                result = dbCursor.next();
                set.add(result);
            }
            out.println(set.toString());
        };

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        doGet(req, resp);
    }
}
