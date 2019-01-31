class Api::V1::WorksController < ApplicationController
	before_action :find_work, only: [:show]

	def index
	  @works = Work.all
		render json: @works
	end

	def show
	  render json: @work
	end

	private

	def find_work
	  @work = Work.find(params[:id])
	end
end
