class String
  define_method(:beats?) do |opponent|
    if self.eql?("rock") && opponent.eql?("scissors")
      true
    elsif self.eql?("rock") && opponent.eql?("paper")
      false  
    end
  end
end
