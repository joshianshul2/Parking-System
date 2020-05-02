
import java.util.Calendar;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asus
 */
class calendar {

    private static int get(int DATE) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    String getCurrentDate()
    {
        int day=calendar.get(Calendar.DATE);
        int month=calendar.get(Calendar.MONTH)+1;
        int year=calendar.get(Calendar.YEAR);
        String currentDate=day+"-"+month+"-"+year;
        System.out.println("Date = "+currentDate);
        return currentDate;
    }
    String getCurrentTime()
    {
        String currentTime=calendar.get(Calendar.HOUR)+":"+calendar.get(Calendar.MINUTE)+":"+calendar.get(Calendar.SECOND);
        return currentTime;
    }
 
    
}
