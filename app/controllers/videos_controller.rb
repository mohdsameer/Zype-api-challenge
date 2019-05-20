class VideosController < ApplicationController
  def index
  	details =  "https://api.zype.com/videos?app_key=XWny5j0V89yb1uZu6SI_D95EADV5FzBYldE9Ny0_q0GOzcWLiruPyhN-f2Pcyohf"
  	http_response = HTTParty.get(details)
    @response = http_response["response"]
  end
end
