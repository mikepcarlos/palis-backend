module Api
  module V1
    class FavoritesController < ApplicationController

      def index
        render json: Favorite.all
      end

      def show
        favorite = Favorite.find(params[:id])

        render json: favorite
      end

      def destroy
        @favorite = Favorite.find(params[:id])
        @media_type = MediaType.find(params[:id])
        @media_type.destroy
        @favorite.destroy
      end

    end
  end
end
