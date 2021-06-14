class EmployeesController < ApplicationController
  :authenticate_consultation!
  before_action :set_consultation
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET consultants/1/employees
  def index
    @employees = @consultation.employees
  end

  # GET consultants/1/employees/1
  def show
  end

  # GET consultants/1/employees/new
  def new
    @employee = @consultation.employees.build
  end

  # GET consultants/1/employees/1/edit
  def edit
  end

  # POST consultants/1/employees
  def create
    @employee = @consultation.employees.build(employee_params)

    if @employee.save
      redirect_to([@employee.consultation, @employee], notice: 'Employee was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT consultants/1/employees/1
  def update
    if @employee.update_attributes(employee_params)
      redirect_to([@employee.consultation, @employee], notice: 'Employee was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE consultants/1/employees/1
  def destroy
    @employee.destroy

    redirect_to consultation_employees_url(@consultation)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:consultation_id])
    end

    def set_employee
      @employee = @consultation.employees.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
      params.require(:employee).permit(:full_name, :nid, :contact, :email, :location, :hourly_rate, :note)
    end
end
