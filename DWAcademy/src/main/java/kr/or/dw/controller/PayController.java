package kr.or.dw.controller;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.dw.service.PayService;

@Controller
@RequestMapping("/pay")
public class PayController {

	private static final Logger logger = LoggerFactory.getLogger(PayController.class);
	
	@Autowired
	private PayService payService;
	
	@RequestMapping("/refund")
	public ResponseEntity<String> refund(String merchant_uid){
		ResponseEntity<String> entity = null;
		
		String result = "F";
		try {
			result = payService.refund(merchant_uid);
			entity = new ResponseEntity<String>(result, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
}