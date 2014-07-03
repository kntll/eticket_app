class StaticPagesController < ApplicationController

  def home
    if signed_in?
    end
  end

  def index
    @projects = Project.search(params[:search])
  end

  def help
  end

  def about
  end

  def contact
  end
end