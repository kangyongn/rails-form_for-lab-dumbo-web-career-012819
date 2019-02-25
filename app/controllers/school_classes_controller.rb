class SchoolClassesController < ApplicationController

  def new
    @sc = SchoolClass.new
  end

  def create
    @sc = SchoolClass.create(params[:school_class])
    redirect_to @sc
  end

  def show
    get_sc
  end

  def edit
    get_sc
  end

  def update
    get_sc
    @sc.update(params[:school_class])
    redirect_to @sc
  end

  private

  def get_sc
    @sc = SchoolClass.find(params[:id])
  end

end
