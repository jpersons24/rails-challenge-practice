class Company < ApplicationRecord

   has_many :employees
   has_many :offices
   has_many :buildings, through: :offices

   def company_office_floors
      self.offices.map do |office|
         office.floor
      end
   end

end
