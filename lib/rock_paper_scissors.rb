class String
  define_method(:beats?) do |opponent|
    if self.eql?("rock") && opponent.eql?("scissors")
      true
    end
  end
end
