class Api::V1::ArtistsController < ApplicationController
	skip_before_action :authorized, only: [:index, :create]
	before_action :find_artist, only: [:show, :update, :destroy]

	def profile
		render json: { artist: ArtistSerializer.new(current_user) }, status: :accepted
	end

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
			@token = encode_token(user_id: @artist.id)
			render json: { artist: ArtistSerializer.new(@artist), jwt: @token }, status: :created
		else
			render json: { error: 'failed to create artist' }, status: :not_acceptable
		end
	end

	def update
	  if @artist.update(artist_params)
	  	render json: { artist: ArtistSerializer.new(@artist) }, status: :accepted
	  end
	end

	def destroy
	  @artist.destroy
	end


	private

	def find_artist
	  @artist = Artist.find(params[:id])
	end

	def artist_params
	 	params.permit(:username, :password, :name, :location, :media, :bio, :img_url, :twitter, :instagram)
	end
end
