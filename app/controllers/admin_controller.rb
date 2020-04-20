class AdminController < ApplicationController
  before_action :can_access?
  
  def accounts
    @accounts = Account.where(admin: false)
  end

  def can_access?
    unless current_account.admin?
      redirect_to root_url, flash: {danger: "You do nort have access to view this page"}
    end
  end

end