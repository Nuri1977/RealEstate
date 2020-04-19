class PublicController < ApplicationController
  def main
    @properties = Property.latest.limit(3)
  end

end
