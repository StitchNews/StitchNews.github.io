class RequestsController < ApplicationController
  def new
  	@request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      UserMailer.download_request(@request.email).deliver_now
      render 'new'
    else
      render 'new'
    end
  end

  private

    def request_params
      params.require(:request).permit(:email)
    end
end
