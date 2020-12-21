class CompaniesController < ApplicationController


   def index
      @companies = Company.all
   end

   def show
      @company = find_company
      @employee = Employee.new
   end

   def new
      @company = Company.new
   end

   def create
      @company = Company.create(company_params)

      redirect_to company_path(@company)
   end

   ##### edit/update actions needed for removing employee from company records? #####

   # def edit
   #    @company = find_company
   # end

   # def update
   #    @company = find_company
   #    @company.update

   #    redirect_to company_path(@company)
   # end

   private

   def company_params
      params.require(:company).permit(:name)
   end

   def find_company
      Company.find(params[:id])
   end



end