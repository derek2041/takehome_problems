# -*- coding: utf-8 -*-
class Scoring
  class Languages

    ENGLISH = {
      %w[A E I O U L N R S T] => 1,
      %w[D G] => 2,
      %w[B C M P] => 3,
      %w[F H V W Y] => 4,
      %w[K] => 5,
      %w[J X] => 8,
      %w[Q Z] => 10
    }.freeze

    SPANISH = {
      %w[A E O S I U N L R T] => 1,
      %w[C D G] => 2,
      %w[B M P] => 3,
      %w[F H V Y] => 4,
      %w[J] => 6,
      %w[K LL Ñ Q RR W X] => 8,
      %w[Z] => 10
    }.freeze

    BULGARIAN = {
      %w[А О Е И Т Н П Р С] => 1,
      %w[В Д М Б К Л] => 2,
      %w[Г Ъ] => 3,
      %w[Ж З] => 4,
      %w[У Ч Я Й Х] => 5,
      %w[Ц Ш Ю] => 8,
      %w[Ф Щ Ь] => 10
    }.freeze

    LANGUAGES = {
      english: ENGLISH,
      spanish: SPANISH,
      bulgarian: BULGARIAN
    }

    def self.scoring_table_for(language)
      LANGUAGES.dig(language)
    end
  end
end
