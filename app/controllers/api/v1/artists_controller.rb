class Api::V1::ArtistsController < ApplicationController
	before_action :find_artist, only: [:show]

	def index
	  @artists = Artist.all
		render json: @artists
	end

	def show
	  render json: @artist
	end


	private

	def find_artist
	  @artist = Artist.find(params[:id])
	end

	def artist_params
	 	params.permit(:name, :location, :media, :bio, :img_url, :twitter, :instagram)
	end
end
