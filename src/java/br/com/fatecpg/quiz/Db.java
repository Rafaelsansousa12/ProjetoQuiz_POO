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
    private static int testsCount = 0;
    private static double testsGradeSum = 0.0;
    private static double lastGrade = 0.0;
    public static ArrayList<Question> quiz;
    
    public static ArrayList<Question> getMathQuiz(){
         quiz = new ArrayList<>();
        quiz.add(new Question("Como o time de heróis,Vingadores, é conhecido ?","Os super-heróis mais Poderosos da Terra", new String[] {"Heróis Unidos.","Heróis da Terra.","Era de Ultron","Os super-heróis mais Poderosos da Terra","Maiores Heróis"}));
        quiz.add(new Question("As joias da Manopla de Thanos são:","Joias do Infinito", new String[] {"Joias do Tempo.","Joias do Finito","Joias da Realidade","Joias do Infinito","Joias do Poder"}));
        quiz.add(new Question("Qual é o nome do pai de Thanos?","Allars.", new String[] {"Starfox.","Allars.","Galatos."}));
        quiz.add(new Question("Qual armadura o homem de ferro usou em VINGADORES UTIMATO?","Mark85", new String[] {"Mark85","Mark50","Mark42","Mark."}));
        quiz.add(new Question("Do que é feito o escudo do Capitão América?","Vibraniun", new String[] {"Alluminiun","Admantiun","Kevlar","Vibraniun"}));
        quiz.add(new Question("Quantas vezes o Dr. Stranho viu o futuro em vingadores guerra infinita?","14.000.605", new String[] {"14.000.655","14.000.605","14.000.750","25.000"}));
        quiz.add(new Question("Que jóia o Thor recuperou em Thor mundo sombrio?","Aether", new String[] {"Aether","Tesserect","Orby","Filosofal"}));
        quiz.add(new Question("Do que é feito o traje do Pantera Negra?","Vibraniun", new String[] {"Nanotecnologia","Vibraniun","Fibra de Metalkotate"}));
        quiz.add(new Question("Qual personagem abaixo é o primeiro Vingador?","Steve Rogers(Capitão América)", new String[] {"Nick Furry","Tony Stark(Homem de Ferro)","Natasha Romanoff","Steve Rogers(Capitão América)","Thor"}));
        quiz.add(new Question("A frase: \"Gênio, Bilionário, Playboy e Filantropo\", é dita por qual personagem e em qual filme?","Tony Stark - Os Vingadores.", new String[] {"Capitão América - Os Vingadores","Gavião Arqueiro - Os Vingadores","Tony Stark - Os Vingadores","Viúva Negra - Os Vingadores.","Homem de Ferro - Os Vingadores 2."}));
        
        
        return quiz;
    }
    
     public static double validateTest(String userAnswers[]){
 
        int count = 0;
        for(int i=0; i<quiz.size(); i++){
            if(quiz.get(i).getAnswer().equals(userAnswers[i])){
                count++;
            }
        }
        double grade = (double)count / (double)quiz.size();
        Db.lastGrade = grade;
        Db.testsGradeSum += grade;
        Db.testsCount++;
        return grade;
    }

   public static double getLastGrade(){
        return Db.lastGrade;
    }
    
    public static double getGradeAverage(){
        return Db.testsGradeSum / (double)Db.testsCount;
    }
}
    



