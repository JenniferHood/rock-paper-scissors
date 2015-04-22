class String
  define_method(:beats?) do |opponent|
    if self.eql?(opponent)
      'tie'
    elsif self.eql?("rock") && opponent.eql?("scissors")
      true
    elsif self.eql?("rock") && opponent.eql?("paper")
      false
    elsif self.eql?("paper") && opponent.eql?("rock")
      true
    elsif self.eql?("scissors") && opponent.eql?("paper")
      true
    elsif self.eql?("scissors") && opponent.eql?("rock")
      false
    elsif self.eql?("paper") && opponent.eql?("scissors")
      false
    end
  end
end
