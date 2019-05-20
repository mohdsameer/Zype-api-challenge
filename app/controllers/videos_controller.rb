class VideosController < ApplicationController

  def index
  	@videos =  "https://api.zype.com/videos?app_key=XWny5j0V89yb1uZu6SI_D95EADV5FzBYldE9Ny0_q0GOzcWLiruPyhN-f2Pcyohf"
  	@response = HTTParty.get(@videos)
    @res = JSON.parse(@response.body)
    @res = @res["response"]
  end
end
