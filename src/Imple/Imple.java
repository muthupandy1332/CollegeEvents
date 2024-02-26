package Imple;

import java.sql.*;


import Dbcon.Dbcon;





import Bean.Studentregbean;
import Bean.collegemanageregbean;
import Bean.freeeventapplybean;
import Bean.freeeventbean;
import Dbcon.Dbcon;
import Interface.Inter;

public class Imple implements Inter {
        static Connection con;
        
    	public int Stureg(Studentregbean prb) {
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`stureg` VALUES(id,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getName());
    		 				System.out.println(prb.getName());
    		 				ps.setString(2,prb.getEmail());
    		 				ps.setString(3,prb.getPhone());
    		 				ps.setString(4,prb.getPass());
    		 				ps.setString(5,prb.getCpass());
    		 				ps.setString(6,prb.getCollege());
    		 				ps.setString(7,"");
    		 			    reg=ps.executeUpdate();
    		
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
    	
    	@Override
    	public boolean Stulog(Studentregbean prb) {
    		// TODO Auto-generated method stub
    		
    		boolean log=false;
    		 con=Dbcon.create();
    		
    		 try {
    				PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`stureg` where email=?  and pass=? and college=?");
    				ps.setString(1,prb.getEmail());
    				
    				ps.setString(2,prb.getPass());
    				ps.setString(3, prb.getCollege());
    				System.out.println(prb.getCollege());
    				ResultSet rs=ps.executeQuery();
    				System.out.println(log=rs.next());
    				
    			} catch (SQLException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    			return log;

    	}

    	public int colmanreg(collegemanageregbean prb) {
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`colmanreg` VALUES(id,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getCname());
    		 				System.out.println(prb.getCname());
    		 				ps.setString(2,prb.getEmail());
    		 				ps.setString(3,prb.getPhone());
    		 				ps.setString(4,prb.getPass());
    		 				ps.setString(5,prb.getCpass());
    		 				ps.setString(6,prb.getCaddress());
    		 				ps.setString(7,"");
    		 			    reg=ps.executeUpdate();
    		
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
    	@Override
    	public boolean colmanlog(collegemanageregbean prb) {
    		// TODO Auto-generated method stub
    		
    		boolean log=false;
    		String status="Accepted";
    		 con=Dbcon.create();
    		
    		 try {
    				PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`colmanreg` where cemail=?  and pass=? and cname=? and status=?");
    				ps.setString(1,prb.getEmail());
    				
    				ps.setString(2,prb.getPass());
    				ps.setString(3, prb.getCname());
    				ps.setString(4, status);
    				System.out.println(prb.getCname());
    				ResultSet rs=ps.executeQuery();
    				System.out.println(log=rs.next());
    				
    			} catch (SQLException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    			return log;

    	}

    	public int freeevent(freeeventbean prb,String ab){
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getDate());
    		 				System.out.println(prb.getDate());
    		 				ps.setString(2,prb.getEmail());
    		 				ps.setString(3,prb.getCollege());
    		 				ps.setString(4,prb.getAddress());
    		 				ps.setString(5,prb.getCategory());
    		 				ps.setString(6,prb.getOrganiser());
    		 				ps.setString(7,prb.getSdate());
    		 				ps.setString(8,prb.getEdate());
    		 				ps.setString(9,prb.getMobile());
    		 				ps.setString(10,prb.getCity());
    		 				ps.setString(11,prb.getState());
    		 				ps.setString(12,prb.getDescribtion());
    		 				ps.setString(13,prb.getTechnical());
    		 				ps.setString(14,prb.getNontechnical());
    		 				ps.setString(15,prb.getDepart());
    		 				ps.setString(16,prb.getConperson1());
    		 				ps.setString(17,prb.getConnum1());
    		 				ps.setString(18,prb.getConperson2());
    		 				ps.setString(19,prb.getConnum2());
    		 				ps.setString(20,prb.getLdate());
    		 				ps.setString(21,prb.getRegfees());
    		 				ps.setString(22,prb.getPic());
    		 				ps.setString(23,prb.getEtype());
    		 				ps.setString(24,prb.getEventname());
    		 				ps.setString(25,ab);
    		 				ps.setString(26,"Not Approved");
    		 			    reg=ps.executeUpdate();
    		
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
    	
    	public int freeeveapply(freeeventapplybean prb){
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getFirstname());
    		 			
    		 				ps.setString(2,prb.getLastname());
    		 				ps.setString(3,prb.getEmail());
    		 				ps.setString(4,prb.getCollege());
    		 				ps.setString(5,prb.getDegree());
    		 				ps.setString(6,prb.getDepartment());
    		 				ps.setString(7,prb.getAdmissionyear());
    		 				ps.setString(8,prb.getRollno());
    		 				ps.setString(9,prb.getDob());
    		 				ps.setString(10,prb.getGender());
    		 				ps.setString(11,prb.getPass());
    		 				ps.setString(12,prb.getCpass());
    		 				ps.setString(13,prb.getHoppy());
    		 				ps.setString(14,prb.getEventname());
    		 				ps.setString(15,prb.getEventtype());
    		 				ps.setString(16,prb.getOrgrn());
    		 				ps.setString(17,prb.getSdate());
    		 				ps.setString(18,prb.getFilename());
    		 				ps.setString(19,prb.getFilecontent());
    		 				ps.setString(20,prb.getFilesize());
    		 				ps.setString(21,prb.getFiletype());
    		 				ps.setString(22,prb.getEncrypt());
    		 				ps.setString(23,prb.getDecrypt());
    		 				ps.setString(24,"HOW");
    		 				ps.setString(25,"are");
    		 				ps.setString(26,"are");
    		 				ps.setString(27,"Not Approved");
    		 				
    		 			    reg=ps.executeUpdate();
    		
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
    	
    	public int limiteveapply(freeeventapplybean prb){
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getFirstname());
    		 			
    		 				ps.setString(2,prb.getLastname());
    		 				ps.setString(3,prb.getEmail());
    		 				ps.setString(4,prb.getCollege());
    		 				ps.setString(5,prb.getDegree());
    		 				ps.setString(6,prb.getDepartment());
    		 				ps.setString(7,prb.getAdmissionyear());
    		 				ps.setString(8,prb.getRollno());
    		 				ps.setString(9,prb.getDob());
    		 				ps.setString(10,prb.getGender());
    		 				ps.setString(11,prb.getPass());
    		 				ps.setString(12,prb.getCpass());
    		 				ps.setString(13,prb.getHoppy());
    		 				ps.setString(14,prb.getEventname());
    		 				ps.setString(15,prb.getEventtype());
    		 				ps.setString(16,prb.getOrgrn());
    		 				ps.setString(17,prb.getSdate());
    		 				ps.setString(18,prb.getFilename());
    		 				ps.setString(19,prb.getFilecontent());
    		 				ps.setString(20,prb.getFilesize());
    		 				ps.setString(21,prb.getFiletype());
    		 				ps.setString(22,prb.getEncrypt());
    		 				ps.setString(23,prb.getDecrypt());
    		 				ps.setString(24,prb.getEventlimit());
    		 				System.out.println(prb.getEventlimit());
    		 				ps.setString(25,"HELLO");
    		 				ps.setString(26,"HELLO");
    		 				ps.setString(27,"Not Approved");
    		 			
    		 				
    		 			    reg=ps.executeUpdate();
    		 			   System.out.println(reg);
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
    	
    	public int paideveapply(freeeventapplybean prb){
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		 con=Dbcon.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,prb.getFirstname());
    		 			
    		 				ps.setString(2,prb.getLastname());
    		 				ps.setString(3,prb.getEmail());
    		 				ps.setString(4,prb.getCollege());
    		 				ps.setString(5,prb.getDegree());
    		 				ps.setString(6,prb.getDepartment());
    		 				ps.setString(7,prb.getAdmissionyear());
    		 				ps.setString(8,prb.getRollno());
    		 				ps.setString(9,prb.getDob());
    		 				ps.setString(10,prb.getGender());
    		 				ps.setString(11,prb.getPass());
    		 				ps.setString(12,prb.getCpass());
    		 				ps.setString(13,prb.getHoppy());
    		 				ps.setString(14,prb.getEventname());
    		 				ps.setString(15,prb.getEventtype());
    		 				ps.setString(16,prb.getOrgrn());
    		 				ps.setString(17,prb.getSdate());
    		 				ps.setString(18,prb.getFilename());
    		 				ps.setString(19,prb.getFilecontent());
    		 				ps.setString(20,prb.getFilesize());
    		 				ps.setString(21,prb.getFiletype());
    		 				ps.setString(22,prb.getEncrypt());
    		 				ps.setString(23,prb.getDecrypt());
    		 				ps.setString(24,"HI");
    		 				ps.setString(25,prb.getRegfees());
    		 				ps.setString(26,"paid");
    		 				ps.setString(27,"Approved");
    		 				

    		 			
    		 				
    		 			    reg=ps.executeUpdate();
    		 			   System.out.println(reg);
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
}
