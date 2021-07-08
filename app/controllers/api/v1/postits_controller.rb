class Api::V1::PostitsController < ApplicationController

	# GET /api/v1/postit/search/:id
	def search
		@post = Postit.find(params[:id])
		if @post.present?
			render json: @post, status: 200
		else
			render json: {status: 'Erro', message: 'Não encontrado'}
		end
	end

	# GET /api/v1/postit/all_postits
	def all_postits
		@posts = Postit.all
		render json: @posts
	end

	# POST /api/v1/postit/create
	def create
		post = Postit.new(permit_params)
		if post.save
			render json: {message: 'Cadastrado com sucesso!', status: 200}, status: 200
		else
			render json: {message: 'Erro ao salvar no banco de dados', status: 500}
		end
	end

	# DELETE /api/v1/postit/destroy/:id
	def destroy
		post = Postit.find(params[:id])
		if post.destroy
			render json: {message: 'Post excluido com sucesso!', status: 200}
		else
			render json: {message: 'Erro ao excluir do banco de dados :(', status: 500}
		end
	end

private
	def permit_params
		params.permit(:title, :description)
	end
end
