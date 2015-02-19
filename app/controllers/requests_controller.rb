class RequestsController < ApplicationController
  def new
  	@request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.link_sent=false
    if @request.save
      #UserMailer.download_request(@request.email).deliver_now
      redirect_to success_path
    else
      render 'new'
    end
  end

  def success

  end 

  private

    def request_params
      params.require(:request).permit(:email)
    end
end
