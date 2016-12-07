package com.utn.controlador;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.utn.dao.HibernateUtil;
import com.utn.modelo.ControlPaciente;
import com.utn.modelo.Paciente;

@Controller
public class DatosPacienteController {
	
	@RequestMapping(value = "/mostrarDatosPaciente")
	public String mostrarDatosPacientes(@Valid @ModelAttribute("paciente") Paciente paciente, BindingResult result, Model model){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try{
			
			Transaction transaccionos = session.beginTransaction();
		
			Query queryp = session.createQuery("from Paciente where DNI =:dni");
			queryp.setParameter("dni", paciente.getDNI());
			List<Paciente> listp = queryp.list(); 
			Paciente pa = new Paciente();
			if (!listp.isEmpty())
				 pa= listp.get(0);
			
			Query query = session.createQuery("from ControlPaciente where username =:user");
			query.setParameter("user", pa.getUsername());
	

		 List<ControlPaciente> list = query.list(); 
		
		model.addAttribute("datosPaciente",pa);
		model.addAttribute("datosEncontrados",list);
		
		return "mostrarDatosPaciente";
		} catch (Exception e) {
			return "redirect:error.do";
		}
	}
	
	
	@RequestMapping(value = "/buscarDatosPaciente", method = RequestMethod.GET)
	public String buscarDatosPacientes(@ModelAttribute("paciente") Paciente paciente, BindingResult result){
		
		return "buscarDatosPaciente";
	}
	
}
