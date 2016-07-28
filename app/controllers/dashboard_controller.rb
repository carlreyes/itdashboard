class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.director?
      director_dashboard
    else
      @work_orders = current_user.work_orders
      tech_dashboard
    end
  end

  protected

  def director_dashboard
    render 'dir_index'
  end

  def tech_dashboard
    render 'tech_index'
  end
end
