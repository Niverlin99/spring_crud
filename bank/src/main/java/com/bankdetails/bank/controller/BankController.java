package com.bankdetails.bank.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bankdetails.bank.dao.BankDAO;
import com.bankdetails.bank.model.Bank;


@Controller
public class BankController {
	
	@Autowired
	private BankDAO  bankDao;
	
	//@Autowired
	//private Bank bank;
	
	//@Autowired
	//private BankService bankService;
	
	//GET ALL BANK DETAILS
	@RequestMapping("/viewbankdetails")  
    public ModelAndView viewbankdetails(){  
        List<Bank> list=bankDao.getAllBankDetails();
        return new ModelAndView("viewbankdetails","list",list);  
    } 
	
	//ADD NEW BANK DETIALS - PAGE REDIRECTION
	@RequestMapping(value ="/addbank",method = RequestMethod.GET)
	public String newRegistration(ModelMap model) {
		Bank bank = new Bank();
		model.addAttribute("bank", bank);
		return "addbank";
	}
	
	//SUBMIT NEW BANK DETAILS
	@RequestMapping(value ="/savebankdetails",method = RequestMethod.POST)
	public String saveBankDetails(@Valid Bank bank,
			BindingResult result, ModelMap model,RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "addbank"; 
		}
		bankDao.saveBankDetails(bank);		
		return "redirect:/viewbankdetails";
	}
	
	//EDIT EXITSTING BANK DETAILS - GET METHOD
	 @RequestMapping(value="/editbank/{id}")  
	    public String getBankById(@PathVariable int id,ModelMap model){  
	       Bank bank=bankDao.getBankById(id);  
	       model.addAttribute("bank", bank);
			return "editbank";
	        
	    } 
	 
    //UPDATE EXISTING BANK DETAILS - UPDATE METHOD
	/*
	 * @RequestMapping(value="/updatebankdetails",method = RequestMethod.POST)
	 * public ModelAndView updateBankDetails(@ModelAttribute("student") Bank bank){
	 * 
	 * bankDao.updateBankDetails(bank); return new
	 * ModelAndView("redirect:/viewbankdetails"); }
	 */
	 
	    @RequestMapping(value="/updatebankdetails",method = RequestMethod.POST)
		public String updateBankDetails(@Valid Bank bank,
				BindingResult result, ModelMap model,RedirectAttributes redirectAttributes) {
			if (result.hasErrors()) {
				return "editbank"; 
			}
			bankDao.updateBankDetails(bank);		
			return "redirect:/viewbankdetails";
		}
	 
	//DELETE BANK DETAILS
	 @RequestMapping(value="/deletebank/{id}",method = RequestMethod.GET)  
	    public ModelAndView deleteBankDetails(@PathVariable int id){  
		     bankDao.deleteBankDetails(id);  
	        return new ModelAndView("redirect:/viewbankdetails");  
	    }
	
}
