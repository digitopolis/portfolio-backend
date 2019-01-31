class Api::V1::ArtistsController < ApplicationController
	before_action :find_artist, only: [:show]

	def index
	  @artists = Artist.all
		render json: @artists
	end

	def show
	  render json: @artist
	end

	def new
	  @artist = Artist.new
	end

	def create
	  @artist = Artist.create(artist_params)
		if @artist.valid?
			render json: @artist, status: :accepted
		else
			render json: { errors: @artist.errors.full_messages }, status: :unprocessible_entity
		end
	end


	private

	def find_artist
	  @artist = Artist.find(params[:id])
	end

	def artist_params
	 	params.permit(:name, :location, :media, :bio, :img_url, :twitter, :instagram)
	end
end
