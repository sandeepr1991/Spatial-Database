//package dbhw2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

class HW2 {
 
    private static final String url = "jdbc:mysql://localhost/HW2";
    private static final String dbName = "HW2";
    private static final String user = "root";
 
    private static final String password = "yeno";
    private static Connection con;
    static ResultSet rs = null;
    static Statement st = null;
    private static int query_Request=1;
    
    
    public static void query1(String[] args){
        int choice;
        int [][]window = new int[2][2];
        if(args[3].compareToIgnoreCase("student") == 0){
            choice = 1;
        }
        else if(args[3].compareToIgnoreCase("building") == 0){
            choice = 2;
        }
        else if(args[3].compareToIgnoreCase("tramstops") == 0)
            choice = 3;
        else{
            System.out.println("Wrong choice \n");
            return;
        }
        
        window[0][0]=Integer.parseInt(args[4]);
        window[0][1]=Integer.parseInt(args[5]);
        window[1][0]=Integer.parseInt(args[6]);
        window[1][1]=Integer.parseInt(args[7]);
        
        String query = new String();
        
        switch(choice){
            case 1:
                query+="select Stu_Id as id from HW2_Student where (ST_within(stu_location,geomfromtext('Polygon(("+window[0][0]+" "+window[0][1]+"," +window[0][0]+" "+window[1][1]+","  +window[1][0]+" "+window[1][1]+"," +window[1][0]+" "+window[0][1]+"," +window[0][0]+" "+window[0][1]+"))')))" ;
                break;
            case 2 :
                query+="select Bui_Id as id from HW2_Building where (ST_within(bui_location,geomfromtext('Polygon(("+window[0][0]+" "+window[0][1]+"," +window[0][0]+" "+window[1][1]+","  +window[1][0]+" "+window[1][1]+"," +window[1][0]+" "+window[0][1]+"," +window[0][0]+" "+window[0][1]+"))')))" ;
                break;
            case 3:
                query+="select Tram_Id as id from HW2_Tram where (ST_within(tram_location,geomfromtext('Polygon(("+window[0][0]+" "+window[0][1]+"," +window[0][0]+" "+window[1][1]+","  +window[1][0]+" "+window[1][1]+"," +window[1][0]+" "+window[0][1]+"," +window[0][0]+" "+window[0][1]+"))')))" ;
                break;
            default:
        }
        try{
            rs = st.executeQuery(query);
             while(rs.next()){
                System.out.println(rs.getString("id") + "\n");
                
            }
             
            
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static void query2(String[] args){
        
        String student= new String(args[3]);
        int distance = Integer.parseInt(args[4]);
        String query = new String();
        query+="select  Bui_id as id from HW2_Building,HW2_Student where (ST_Distance(Bui_location,stu_location))<"+distance+" and stu_id='" + student+"'";
        try{
            rs = st.executeQuery(query);
             while(rs.next()){
                System.out.println(rs.getString("id") + "\n");
                
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        query="";
        query+="select  Tram_id as id from HW2_Tram,HW2_Student where (ST_Distance(Tram_location,stu_location))<"+distance+" and stu_id='" + student+"'";
        try{
            rs = st.executeQuery(query);
             while(rs.next()){
                System.out.println(rs.getString("id") + "\n");
                
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static void query3(String[] args){
        int choice;
        int number_Of_Neighbour = Integer.parseInt(args[5]);
        String query = new String();
        String entity = new String(args[4]);
        if(args[3].compareToIgnoreCase("student") == 0){
            choice = 1;
        }
        else if(args[3].compareToIgnoreCase("building") == 0){
            choice = 2;
        }
        else if(args[3].compareToIgnoreCase("tramstops") == 0)
            choice = 3;
        else{
            System.out.println("Wrong choice \n");
            return;
        }
        
        switch(choice){
            case 1:
                query+="select S2.Stu_id as id  from HW2_Student as S1, HW2_Student as S2 where S1.Stu_id='"+entity+ "' and S1.Stu_Id <> S2.Stu_Id"
                        +" ORDER By (ST_Distance(S1.Stu_location,S2.Stu_location)) limit "+ number_Of_Neighbour;
                break;
            case 2 :
                query+="select B2.Bui_id as id  from HW2_Building as B1, HW2_Building as B2 where B1.Bui_id='"+entity+ "' and B1.Bui_Id <> B2.Bui_Id"
                        +" ORDER By (ST_Distance(B1.Bui_location,B2.Bui_location)) limit "+ number_Of_Neighbour;
                break;
            case 3:
                query+="select T2.Tram_id as id  from HW2_Tram as T1, HW2_Tram as T2 where T1.Tram_id='"+entity+ "' and T1.Tram_Id <> T2.Tram_Id"
                        +" ORDER By (ST_Distance(T1.Tram_location,T2.Tram_location)) limit "+ number_Of_Neighbour;
                break;
            
            default:
        }
        try{
            rs = st.executeQuery(query);
             while(rs.next()){
                System.out.println(rs.getString("id") + "\n");
                
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public static void query4(String[] args){
        int query_Number = Integer.parseInt(args[3]);
        String query = new String();
        String id = new String();
        String tramid = new String();
        String preid = new String("first");
        int count=0;
        
        switch(query_Number){
            
            case 1:
                query +="select table1.stu_id from (select distinct stu_id from HW2_Student, HW2_Tram where (ST_Distance(stu_location,tram_location))<250 and (Tram_Id='t6ssl' )) as table1,(select distinct stu_id from HW2_Student, HW2_Tram where (ST_Distance(stu_location,tram_location))<250 and (Tram_Id='t2ohe' )) as table2 where table1.stu_id = table2.stu_id";
                break;
            case 2:
                query += "select stu_id,st_distance(stu_location,Tram_location),Tram_Id from HW2_Student,HW2_Tram \n" +
                         "order by stu_id,st_distance(stu_location,Tram_location)";
                break;
                
            case 3:
                query +="select Tram_Id  from HW2_Building,HW2_Tram where ST_distance(Bui_location,tram_location)<250" +
                " group by tram_id order by count(*) desc limit 1";
                break;
            case 4:
                query+="select HW2_Student.Stu_Id as stu_id,count(*) as count from (select Bui_Id,min(ST_Distance(stu_location,Bui_location)) as mindistance from HW2_Building,HW2_Student\n" +
                        "group by bui_id) as mintable,HW2_Student,HW2_Building where mintable.mindistance = St_Distance(HW2_Building.Bui_location,HW2_Student.stu_location) and mintable.Bui_id=HW2_Building.Bui_Id\n" +
                        "group by HW2_Student.Stu_Id\n" +
                        "Order by count(*) desc\n" +
                        "limit 5";
                break;
            case 5:
                query+="select bui_id,astext(envelope(Bui_location)) as location from HW2_Building where Bui_name like '%SS%'";
                break;
            default:
                break;
        }
        
        
        
        try{
            rs = st.executeQuery(query);
            int left_x=999,left_y=999,right_x=0,right_y=0;
                    
             while(rs.next()){
                
                
                if(query_Number == 1){
                    
                        System.out.println(rs.getString("stu_id") + "\n");
                
                    
                } 
                if(query_Number == 4){
                   
                        System.out.println(rs.getString("stu_id") +"\t" +rs.getString("count")+ "\n");
                
                    
                } 
                if(query_Number == 5){
                        String location =  rs.getString("location");
                        String newlocation[]=location.split(" ");
                        if(left_x>Integer.parseInt(newlocation[0].substring(9, 12)))
                            left_x=Integer.parseInt(newlocation[0].substring(9, 12));
                        String newlocation1[] = newlocation[1].split(",");
                        if(left_y>Integer.parseInt(newlocation1[0]))
                            left_y=Integer.parseInt(newlocation1[0]);
                        newlocation1=newlocation[2].split(",");
                        if(right_x<Integer.parseInt(newlocation1[1]))
                            right_x=Integer.parseInt(newlocation1[1]);
                        newlocation1=newlocation[3].split(",");
                        if(right_y<Integer.parseInt(newlocation1[0]))
                            right_y=Integer.parseInt(newlocation1[0]);
                   
                
                    
                }
                
                 
                if(query_Number == 3){
                     System.out.println(rs.getString("Tram_id") + "\n");
                } 
                 
                if(query_Number == 2){ 
                id = rs.getString("stu_id");
                
                
                if(count<2)
                    System.out.println(id +"\t"+rs.getString("tram_id") +"\n");
                if(preid.equals(id)|| preid.equals("first"))
                    count++;
                else
                    count=0;
                preid=id;
                }
                
            }
         
            if(query_Number == 5)
                System.out.println(left_x+" "+left_y+"\t,"+right_x+" "+right_y+"\n");
                
        }catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    public static void set_Query(String[] args){
        
        
            if(args[2].compareToIgnoreCase("window")==0){
                query_Request = 1;
            }
            else if(args[2].compareToIgnoreCase("within")==0){
                query_Request = 2;
            }
            else if(args[2].compareToIgnoreCase("nearest-neighbor") == 0){
                query_Request = 3;
            }
            else
                query_Request = 4;
        
        
    }
    
    
    
    public static void main(String args[]) {
        int number_Of_Args = args.length;
        String newargs[]=new String[args.length+2];
        
        int i=0;
        while(i<number_Of_Args){
            newargs[i+2]=args[i];
            i++;
        }
        //args = newargs;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
           
            st = con.createStatement();
            set_Query(newargs);
            switch(query_Request){
                case 1:
                        query1(newargs);
                        break;
                case 2:
                        query2(newargs);
                        break;
                case 3:
                        query3(newargs);
                        break;
                case 4:
                        query4(newargs);
                        break;
                default:
            }
          //  rs = st.executeQuery("select Bui_id,Bui_name from HW2_Building where (ST_Distance(Bui_location,geomfromtext('point(0 0)')))>500\n" +
           //                      "ORDER By (ST_Distance(Bui_location,geomfromtext('point(0 0)')))\n" +
           //                      "limit 5");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
}
