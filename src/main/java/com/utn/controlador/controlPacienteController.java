package com.utn.controlador;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;


import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.utn.dao.HibernateUtil;
import com.utn.modelo.ControlPaciente;




@Controller
public class controlPacienteController {
	
	@RequestMapping(value = "/controlDiario")
	public String ingresarControlPaciente(@ModelAttribute("controlPaciente") ControlPaciente controlPaciente, BindingResult result) {
		return "controlDiario";
	}
	
	
	@RequestMapping(value = "/controlDiarioPaciente", method = RequestMethod.POST)
	public String alta(@Valid @ModelAttribute("controlPaciente") ControlPaciente controlPaciente, BindingResult result) {
		
		 
	      
		Session session = HibernateUtil.getSessionFactory().openSession();

		if (!result.hasErrors()) {
			Transaction transaccionos = session.beginTransaction();
			
		
			controlPaciente.setUsername(SecurityContextHolder.getContext().getAuthentication().getName());
			
			//Se agrega la fecha actual a la informacion del paciente
			Calendar fechaActual = GregorianCalendar.getInstance();
			SimpleDateFormat formFecha = new SimpleDateFormat("yyyy-MM-dd");
			String fecha = formFecha.format(fechaActual.getTime());
			controlPaciente.setFecha(Date.valueOf(fecha));
			session.save(controlPaciente);
			transaccionos.commit();
		}

		return "controlDiario";
	}

	
	
	
}
