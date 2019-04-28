/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class Db {
    public static ArrayList<Question> getMathQuiz(){
        ArrayList<Question> quiz = new ArrayList<>();
        quiz.add(new Question("Qual jogador marcou o primeiro gol da Copa do Mundo 2014?","Marcelo, Seleção Brasileira.", new String[] {"Neymar, Seleção Brasileira.","Modric, Seleção Croata.","Oscar, Seleção Brasileira.","Marcelo, Seleção Brasileira.","Van Persie, Seleção Holandesa."}));
        quiz.add(new Question("Qual foi o primeiro gol de falta da Copa do Mundo 2014?","Dzemaili da Suíça, contra a França.", new String[] {"Dzemaili da Suíça, contra a França.","David Luiz do Brasil, contra a Colômbia.","David Luiz do Brasil, contra o Chile.","Messi da Argentina, contra a Nigéria.","Dzemaili da Suíça contra o Equador."}));
        quiz.add(new Question("Quais seleções tiveram o primeiro empate com nenhum gol no placar na Copa?","Irã e Nigéria.", new String[] {"Brasil e México.","Japão e Grécia.","Rússia e Coréia do Sul.","Costa Rica e Inglaterra.","Irã e Nigéria."}));
        quiz.add(new Question("Quem foi o maior artilheiro da Copa?","James Rodríguez, camisa 10 da Seleção Colombiana.", new String[] {"Neymar Jr, camisa 10 da Seleção Brasileira.","Lionel Messi, camisa 10 da Seleção Argentina.","James Rodríguez, camisa 10 da Seleção Colombiana.","Arjen Robben, camisa 11 da Seleção Holandesa.","Thomas Mueller, camisa 13 da Seleção Alemã."}));
        quiz.add(new Question("Qual foi a primeira seleção a ser eliminada da copa?","Espanha.", new String[] {"Suíça.","França.","Espanha.","Holanda.","Brasil."}));
        quiz.add(new Question("Jorge Sampaoli foi o técnico de qual seleção?","Chile.", new String[] {"Argentina.","Bélgica.","Chile.","Alemanha.","Espanha."}));
        quiz.add(new Question("A Itália foi eliminada:","Na fase de grupos.", new String[] {"Nas quartas de final.","Nas oitavas de final.","Nas semi-finais.","Na fase de grupos.","Na final."}));
        quiz.add(new Question("Luis Suárez do Uruguai, mordeu pela terceira vez um adversário em campo, este foi","Chiellini, da Itália.", new String[] {"Balotelli, da Itália.","Zuniga, da Colômbia.","Óscar Duarte, da Costa Rica.","Debuchy, da França.","Chiellini, da Itália."}));
        quiz.add(new Question("O jogador conhecido por \"simular pênaltis\" é:","Robben, Holanda.", new String[] {"Fred, Brasil.","Xabi Alonso, Espanha.","Robben, Holanda.","Diego Costa, Espanha.","Valbuena, França."}));
        quiz.add(new Question("Qual foi o primeiro jogo que acabou em pênaltis?","Brasil e Chile.", new String[] {"Holanda e Argentina.","Grécia e Costa Rica.","Brasil e Chile.","México e Holanda.","Brasil e Colômbia."}));
        return quiz;
    }
    
}
