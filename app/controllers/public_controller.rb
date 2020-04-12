class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, notice: "Successfully signed in" and return
    end

    @properties = Property.latest.limit(3)
  end

end
