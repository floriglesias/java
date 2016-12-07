package com.utn.modelo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "Paciente", catalog = "Saludable")
public class Paciente {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "nombre")
	private String nombre;
	
	@Column(name = "apellido")
	private String apellido;
	
	
	@Column(name = "DNI")
	private int DNI;
	
	@Column(name = "sexo")
	private String sexo;
	
	@Column(name = "fechaNacimiento")
	private Date fechaNacimiento;
	
	@Column(name = "localidad")
	private String localidad;
	
	@Column(name = "tipoTratamiento")
	private String tipoTratamiento;
	
	@Autowired
	@Column(name = "username")
	private String username;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getDNI() {
		return DNI;
	}

	public void setDNI(int dNI) {
		DNI = dNI;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getTipoTratamiento() {
		return tipoTratamiento;
	}

	public void setTipoTratamiento(String tipoTratamiento) {
		this.tipoTratamiento = tipoTratamiento;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Paciente(Integer id, String nombre, String apellido, int dNI, String sexo, Date fechaNacimiento,
			String localidad, String tipoTratamiento, String username) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		DNI = dNI;
		this.sexo = sexo;
		this.fechaNacimiento = fechaNacimiento;
		this.localidad = localidad;
		this.tipoTratamiento = tipoTratamiento;
		this.username = username;
	}

	public Paciente(String nombre, String apellido, int dNI, String sexo, Date fechaNacimiento, String localidad,
			String tipoTratamiento) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		DNI = dNI;
		this.sexo = sexo;
		this.fechaNacimiento = fechaNacimiento;
		this.localidad = localidad;
		this.tipoTratamiento = tipoTratamiento;
	}

	public Paciente(int dNI) {
		DNI = dNI;
	}
	
	public Paciente() {
	}

	@Override
	public String toString() {
		return "Paciente [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", DNI=" + DNI + ", sexo="
				+ sexo + ", fechaNacimiento=" + fechaNacimiento + ", localidad=" + localidad + ", tipoTratamiento="
				+ tipoTratamiento + ", username=" + username + "]";
	}
	
	
	
}
