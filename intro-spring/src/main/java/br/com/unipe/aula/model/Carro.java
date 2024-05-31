package br.com.unipe.aula.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="carros")
public class Carro implements Serializable {
    
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private boolean alugado;
    /*@Column(nullable = false, length=100)
    private String marca;*/

	public boolean isAlugado() {
		return alugado;
	}

	public void setAlugado(boolean alugado) {
		this.alugado = alugado;
	}

	@Column(nullable=false, length=100)
    private String modelo;
    
    @Column(nullable=false, length=100)
    private String placa;
    
    @Column(nullable=false)
    private int ano;	
	
	public Carro(Long id, String marca, String modelo, String placa, int ano) {
		super();
		this.id = id;
		// this.marca = marca;
		this.modelo = modelo;
		this.placa = placa;
		this.ano = ano;
		this.alugado = alugado;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	/*public String getMarca() {
		return marca;
	}

	public void setNome(String marca) {
		this.marca = marca;
	}*/

	public String getModelo() {
		return modelo;
	}
	
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getPlaca() {
		return placa;
	}
	
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	
	public int getAno() {
		return ano;
	}
	
	public void setAno(int ano) {
		this.ano = ano;
	}

	public Carro() {}
}
