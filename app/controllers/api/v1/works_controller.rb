class Api::V1::WorksController < ApplicationController
	skip_before_action :authorized, only: [:index]
	before_action :find_work, only: [:show, :destroy]

	def index
	  @works = Work.all
		render json: @works
	end

	def show
	  render json: @work
	end

	def create
	  @work = Work.create(work_params)
		if @work.valid?
			render json: @work, status: :accepted
		else
			render json: { errors: @work.errors.full_messages }, status: :unprocessible_entity
		end
	end

	def destroy
	  @work.destroy
	end

	private

	def find_work
	  @work = Work.find(params[:id])
	end

	def work_params
	  params.require(:work).permit(:title, :media, :year, :img_url, :statement, :artist_id)
	end
end
