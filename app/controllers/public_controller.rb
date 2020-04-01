class PublicController < ApplicationController
  def main
    @properties = Property.latest
  end

end
