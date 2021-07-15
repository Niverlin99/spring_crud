package com.bankdetails.bank.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.bankdetails.bank.model.Bank;


public class BankDAO {
	
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  

	public List<Bank> getAllBankDetails() {
		return template.query("select * from bank",new ResultSetExtractor<List<Bank>>(){  
		     public List<Bank> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		        List<Bank> list=new ArrayList<Bank>();  
		        while(rs.next()){  
		        Bank e=new Bank();  
		        e.setId(rs.getInt(1));  
		        e.setBank_name(rs.getString(2)); 
		        e.setBranch_name(rs.getString(3));  
		        e.setIfsc_code(rs.getString(4));
        
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });  
	}

	public void saveBankDetails(Bank bank) {
		String sql="insert into bank(bank_name,branch_name,ifsc_code) values('"+bank.getBank_name()+"','"+bank.getBranch_name()+"','"+bank.getIfsc_code()+"')";
		System.out.println(sql);
	     template.update(sql);  
	}

	public void deleteBankDetails(int id) {
		String sql="delete from bank where id="+id+"";  
	    template.update(sql);  
		
	}

	public Bank getBankById(int id) {
		 return template.query("select * from bank where id="+id,new ResultSetExtractor<Bank>(){  
		     public Bank extractData(ResultSet rs) throws SQLException, DataAccessException {  
		    	 Bank e=new Bank();  
		        while(rs.next()){ 
		        	e.setId(rs.getInt(1));  
			        e.setBank_name(rs.getString(2));  
			        e.setBranch_name(rs.getString(3));  
			        e.setIfsc_code(rs.getString(4));
		        }  
		        return e;  
		        }  
		    });  
	}

	public void updateBankDetails(Bank bank) {
		String sql="update bank set bank_name='"+bank.getBank_name()+"',branch_name='"+bank.getBranch_name()+"',ifsc_code='"+bank.getIfsc_code()+"' where id="+bank.getId()+"";
		System.out.println(sql);
        template.update(sql);  
	}
		


}
