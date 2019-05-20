class VideosController < ApplicationController
  before_action :get_video_details, only: [:index, :show]

  def index
  end

  def show
    @video = @response.select{ |video| video["_id"] == params[:id] }.first
  end

  private

  def get_video_details
    details = "https://api.zype.com/videos?app_key=XWny5j0V89yb1uZu6SI_D95EADV5FzBYldE9Ny0_q0GOzcWLiruPyhN-f2Pcyohf&api_key=zS5ZuUwwhtA18kqioTyil7ExUSNcKic8Uxu0iG-bYHsNKXc7D6JONYmzYPeDwJA1"
    http_response = HTTParty.get(details)
    @response = http_response["response"]
  end
end
