class DashboardController < ApplicationController
  def index
  end

  def profile
    @account = Account.find(params[:id])
    @properties = Property.where(account_id: @account.id)
    
    @properties_sold = Property.where(account_id: @account.id).sold
    @properties_for_sale = Property.where(account_id: @account.id).for_sale
    @properties_leased = Property.where(account_id: @account.id).leased
    @properties_for_rent = Property.where(account_id: @account.id).for_rent
  end

  def properties
  end

  def reports
  end
end
