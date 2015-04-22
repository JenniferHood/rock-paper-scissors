require('rspec')
require('rock_paper_scissors')

describe('String#beats?') do
   it("returns true if rock is the object and scissors is the argument") do
     expect("rock".beats?("scissors")).to(eq(true))
   end

   it("returns false if rock is the object and paper is the argument") do
     expect("rock".beats?("paper")).to(eq(false))
   end

   it("returns 'tie' if the object is the same as the argument") do
     expect("rock".beats?("rock")).to(eq('tie'))
   end

   it("returns true if the object beats the argument") do
     expect("paper".beats?("rock")).to(eq(true))
   end

   it("returns false if the argument beats the object") do
     expect("scissors".beats?("rock")).to(eq(false))
   end
end
