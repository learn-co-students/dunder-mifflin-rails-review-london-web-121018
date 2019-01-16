class EmployeesController < ApplicationController
  before_action :set_dog, only: [:show, :destroy]

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @dog = Dog.find(params[:employee][:dog_id])
    @employee = @dog.employees.create!(employee_params)
    if @employee.valid?
        redirect_to @employee
      else
        redirect_to new_employee_path
      end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    if @employee.valid?
      redirect_to @employee
    else
      redirect_to edit_employee_path
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name,
      :alias, :title, :office, :dog_id, :img_url)
  end

  def set_dog
    @dog = Employee.find(params[:id]).dog
  end

end
