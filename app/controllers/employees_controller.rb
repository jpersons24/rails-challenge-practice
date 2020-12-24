class EmployeesController < ApplicationController

   def show
      @employee = find_employee
   end

   def new
      @employee = Employee.new
   end

   def create
      @employee = Employee.create(employee_params)
      redirect_to company_path(@employee.company_id)
   end

   def edit
      @employee = find_employee
   end

   def update
      @employee = find_employee
      @employee.update(employee_params)
      redirect_to companies_path
   end

   private

   def employee_params
      params.require(:employee).permit(:name, :title, :company_id)
   end

   def find_employee
      @employee = Employee.find(params[:id])
   end


end