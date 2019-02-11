class Api::V1::CommentsController < ApplicationController
	skip_before_action :authorized, only: [:index]
	before_action :find_comment, only: [:destroy]

	def index
	  @comments = Comment.all
		render json: @comments
	end

	def create
	  @comment = Comment.create(comment_params)
		if @comment.valid?
			render json: @comment, status: :accepted
		else
			render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
		end
	end

	def destroy
	  @comment.destroy
	end

	private

	def find_comment
	  @comment = Comment.find(params[:id])
	end

	def comment_params
	  params.permit(:content, :artist_id, :work_id)
	end
end
