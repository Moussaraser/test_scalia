class CompaniesController < ApplicationController
  
  def show
    @company = Company.find(params[:id])
  end
  
  def index
    @companies = Company.all
  end
  
  def new
  end
end
