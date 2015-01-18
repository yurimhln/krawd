class VisitorsController < ApplicationController
	 respond_to :html, :xml, :json
def index
	@post = Post.new
end

end
