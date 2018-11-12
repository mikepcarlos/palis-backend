module Api
  module V1
    class MediaTypesController < ApplicationController

      def index
        render json: MediaType.all
      end

      def show
        media = MediaType.find(params[:id])

        render json: media
      end

    end
  end
end
