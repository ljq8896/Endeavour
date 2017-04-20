/**
 * Created by lee on 2017/4/2.
 */
package com.endeavour.encloud;

import java.util.Date;
import com.mongodb.ReflectionDBObject;

public class DataBean extends ReflectionDBObject {
    private Date date;
    private String deviceID;
    private float temperature;
    private float moisture;
    public void setDate(Date date){
        this.date = date;
    }
    public void setDeviceID(String deviceID){
        this.deviceID = deviceID;
    }
    public void setTemperature(float temperature){
        this.temperature = temperature;
    }
    public void setMoisture(float moisture){
        this.moisture = moisture;
    }
    public Date getDate(){
        return this.date;
    }
    public String getDeviceID(){
        return this.deviceID;
    }
    public float getTemperature(){
        return this.temperature;
    }
    public float getMoisture(){
        return this.moisture;
    }
}
