package com.codoacodo.dto;

import java.util.Date;

public class Orador {
	private Long idOrador; 
	private String nombre;
	private String apellido;
	private String mail; 
	private String tema; 
	private Date fechaAlta;
	
	public Orador(Long idOrador, String nombre, String apellido, String mail, String tema, Date fechaAlta) {
		this.idOrador = idOrador;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		this.fechaAlta = fechaAlta;
	}
        
        public Orador() {
        }

        public Long getIdOrador() {
            return idOrador;
        }

        public void setIdOrador(Long idOrador) {
            this.idOrador = idOrador;
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

        public String getMail() {
            return mail;
        }

        public void setMail(String mail) {
            this.mail = mail;
        }

        public String getTema() {
            return tema;
        }

        public void setTema(String tema) {
            this.tema = tema;
        }

        public Date getFechaAlta() {
            return fechaAlta;
        }

        public void setFechaAlta(Date fechaAlta) {
            this.fechaAlta = fechaAlta;
        }

        @Override
        public String toString() {
            return "Orador{" + "idOrador=" + idOrador + ", nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail + ", tema=" + tema + ", fechaAlta=" + fechaAlta + '}';
        }
           
}
