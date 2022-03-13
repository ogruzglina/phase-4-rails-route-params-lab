class StudentsController < ApplicationController

  def index
    result = if params[:name]
      Student.by_name(params[:name])
    else 
      Student.all   
    end 
    render json: result
  end

  def show
    render json: Student.find(params[:id])
  end

end
