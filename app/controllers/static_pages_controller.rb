class StaticPagesController < ApplicationController
  def home
  	redirect_to new_request_path
  end
end
