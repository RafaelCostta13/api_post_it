class Api::V1::PostitsController < ApplicationController

	def search
		
	end

	def all_postits
		@posts = Postit.all
		render json: @posts
	end

	def create
		
	end

	def detroy
		
	end
end
