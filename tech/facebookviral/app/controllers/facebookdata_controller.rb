class FacebookdataController < ApplicationController
 respond_to :html, :xml, :jsons

 def index(facebook_viral, shares, likes)
    @facebook_viral = Facebook_viral.new
  @shares = shares.all
	@likes = likes.all
  end

	
	
end