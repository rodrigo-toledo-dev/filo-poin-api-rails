class OperationsController < ApplicationController
  before_action :set_employee

  def index

  end

  def show
  end

  def create
  end

  protected
    def set_employee
      @employee = Employee.find(params[:id])
    end
end
