
package br.com.fatecpg.quiz;

import java.util.Comparator;

public class Ranking implements Comparator<Score> {

    @Override
    public int compare(Score o1, Score o2) {
        return o2.getScore().compareTo(o1.getScore());
    }
}
