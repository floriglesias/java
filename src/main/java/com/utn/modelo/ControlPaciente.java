package com.utn.modelo;

import java.sql.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;



@Entity
@Table(name = "ControlPaciente", catalog = "Saludable")
public class ControlPaciente {
	
	@Id
	@GeneratedValue
	@Column(name = "idControl")
	private Integer idControl;

	@Autowired
	@Column(name = "username")
	private String username;
	
	@NotNull
	@NotEmpty
	@Column(name = "tipoComida")
	private String tipoComida;
	
	@NotNull
	@NotEmpty
	@Column(name = "comidaPrincipal")
	private String comidaPrincipal;
	
	@Column(name = "comidaSecundaria")
	private String comidaSecundaria;
	
	@NotNull
	@NotEmpty
	@Column(name = "bebida")
	private String bebida;
	
	
	@Column(name = "ingerioPostre")
	private boolean ingerioPostre;
	
	@Column(name = "postre")
	private String postre;
	
	@Column(name = "seTento")
	private boolean seTento;
	
	
	@Column(name = "alimentoDeseado")
	private String alimentoDeseado;
	

	@Column(name = "quedoHambriento")
	private boolean quedoHambriento;
	
	@Column(name = "fecha")
	private Date fecha;

	public Integer getIdControl() {
		return idControl;
	}

	public void setIdControl(Integer idControl) {
		this.idControl = idControl;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTipoComida() {
		return tipoComida;
	}

	public void setTipoComida(String tipoComida) {
		this.tipoComida = tipoComida;
	}

	public String getComidaPrincipal() {
		return comidaPrincipal;
	}

	public void setComidaPrincipal(String comidaPrincipal) {
		this.comidaPrincipal = comidaPrincipal;
	}

	public String getComidaSecundaria() {
		return comidaSecundaria;
	}

	public void setComidaSecundaria(String comidaSecundaria) {
		this.comidaSecundaria = comidaSecundaria;
	}

	public String getBebida() {
		return bebida;
	}

	public void setBebida(String bebida) {
		this.bebida = bebida;
	}

	public boolean isIngerioPostre() {
		return ingerioPostre;
	}

	public void setIngerioPostre(boolean ingerioPostre) {
		this.ingerioPostre = ingerioPostre;
	}

	public String getPostre() {
		return postre;
	}

	public void setPostre(String postre) {
		this.postre = postre;
	}

	public boolean isSeTento() {
		return seTento;
	}

	public void setSeTento(boolean seTento) {
		this.seTento = seTento;
	}

	public String getAlimentoDeseado() {
		return alimentoDeseado;
	}

	public void setAlimentoDeseado(String alimentoDeseado) {
		this.alimentoDeseado = alimentoDeseado;
	}

	public boolean isQuedoHambriento() {
		return quedoHambriento;
	}

	public void setQuedoHambriento(boolean quedoHambriento) {
		this.quedoHambriento = quedoHambriento;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public ControlPaciente(String tipoComida, String comidaPrincipal, String comidaSecundaria, String bebida,
			boolean ingerioPostre, String postre, boolean seTento, String alimentoDeseado, boolean quedoHambriento) {
		super();
		this.tipoComida = tipoComida;
		this.comidaPrincipal = comidaPrincipal;
		this.comidaSecundaria = comidaSecundaria;
		this.bebida = bebida;
		this.ingerioPostre = ingerioPostre;
		this.postre = postre;
		this.seTento = seTento;
		this.alimentoDeseado = alimentoDeseado;
		this.quedoHambriento = quedoHambriento;
	}

	public ControlPaciente(Integer idControl, String username, String tipoComida, String comidaPrincipal,
			String comidaSecundaria, String bebida, boolean ingerioPostre, String postre, boolean seTento,
			String alimentoDeseado, boolean quedoHambriento, Date fecha) {
		super();
		this.idControl = idControl;
		this.username = username;
		this.tipoComida = tipoComida;
		this.comidaPrincipal = comidaPrincipal;
		this.comidaSecundaria = comidaSecundaria;
		this.bebida = bebida;
		this.ingerioPostre = ingerioPostre;
		this.postre = postre;
		this.seTento = seTento;
		this.alimentoDeseado = alimentoDeseado;
		this.quedoHambriento = quedoHambriento;
		this.fecha = fecha;
	}
	
	
	

	public ControlPaciente() {
		super();
	}

	@Override
	public String toString() {
		return "ControlPaciente [idControl=" + idControl + ", username=" + username + ", tipoComida=" + tipoComida
				+ ", comidaPrincipal=" + comidaPrincipal + ", comidaSecundaria=" + comidaSecundaria + ", bebida="
				+ bebida + ", ingerioPostre=" + ingerioPostre + ", postre=" + postre + ", seTento=" + seTento
				+ ", alimentoDeseado=" + alimentoDeseado + ", quedoHambriento=" + quedoHambriento + ", fecha=" + fecha
				+ "]";
	}
	

	

	
	
	
}
