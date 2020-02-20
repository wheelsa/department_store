class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  def index
    @departments = Department.all
  end

  def show
  end

  def edit
  end

  def new
  end
  def create
  end 

  def destroy
  end 

private
  def set_department
    @department = Department.find(params[:id])
  end 
end
