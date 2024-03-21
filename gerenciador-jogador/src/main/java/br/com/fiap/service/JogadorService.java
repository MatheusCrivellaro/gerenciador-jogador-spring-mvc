package br.com.fiap.service;

import java.time.LocalDate;


import br.com.fiap.jogador.Dominante;
import br.com.fiap.jogador.Jogador;
import br.com.fiap.jogador.Posicao;
import br.com.fiap.jogador.Time;
import br.com.fiap.repository.JogadorRepository;

public class JogadorService {
	
	public static void mock(JogadorRepository repository) {
		repository.save(new Jogador(1, "Matheus", Posicao.ATACANTE, Time.ATHLETICOPR, 177.0, Dominante.DIREITO, LocalDate.now().toString()));
		repository.save(new Jogador(2, "Gabriel", Posicao.GOLEIRO, Time.BAHIA, 180.0, Dominante.DIREITO, LocalDate.now().toString()));
		repository.save(new Jogador(3, "Carol", Posicao.MEIA, Time.BRAGANTINO, 165.0, Dominante.ESQUERDO, LocalDate.now().toString()));
		repository.save(new Jogador(4, "Lucas", Posicao.ZAGUEIRO, Time.CRUZEIRO, 175.0, Dominante.DIREITO, LocalDate.now().toString()));
		repository.save(new Jogador(5, "Ana Luisa", Posicao.ATACANTE, Time.FLUMINENSE, 170.0, Dominante.ESQUERDO, LocalDate.now().toString()));
	}
	
	public static String dataFormatter(String data) {
		String[] lista = data.split("-");
		return lista[2] + "/" + lista[1] + "/" + lista[0];
	}
	
}
