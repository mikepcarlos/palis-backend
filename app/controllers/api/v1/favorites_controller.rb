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

    end
  end
end
