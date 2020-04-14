class DashboardController < ApplicationController
  def index
  end

  def profile
    @account = Account.find(params[:id])
  end

  def properties
  end

  def reports
  end
end
