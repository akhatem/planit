class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[show edit update destroy]

  def index
    @departments = if params[:department_type] == 'all'
                     Department.all.order(id: :asc)
                   else
                     Department.where(department_type: params[:department_type]).order(id: :asc)
                   end
  end

  def show; end

  def edit; end

  def update; end

  def new; end

  def create; end

  def destroy; end

  private

  def set_department
    @department = Department.find(params[:id])
  end
end
