class Company < ApplicationRecord

   has_many :employees
   has_many :offices
   has_many :buildings, through: :offices

   # returns array of strings including office ["building name || Floor number"]
   def office_building_and_floor
      self.offices.map do |office|
         "#{office.building.name}  ||  Floor: #{office.floor}"
      end
   end

   

end
