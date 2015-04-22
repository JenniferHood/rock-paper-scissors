class String
  define_method(:beats?) do |opponent|
    object_wins = (self.eql?("rock") && opponent.eql?("scissors")) || (self.eql?("paper") && opponent.eql?("rock")) || (self.eql?("scissors") && opponent.eql?("paper"))

    if self.eql?(opponent)
      'tie'
    else
      object_wins
    end
  end
end
