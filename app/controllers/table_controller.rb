class TableController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  before_filter :authenticate_user!


  layout 'user'

	def index
		@criterions=Criterion.all
    	@sections=Section.all
	end
end
