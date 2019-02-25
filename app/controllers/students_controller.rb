class StudentsController < ApplicationController

  def new
    @s = Student.new
  end

  def create
    @s = Student.create(params[:student])
    redirect_to @s
  end

  def show
    get_s
  end

  def edit
    get_s
  end

  def update
    get_s.update(params[:student])
    redirect_to @s
  end

  private

  def get_s
    @s = Student.find(params[:id])
  end
end
