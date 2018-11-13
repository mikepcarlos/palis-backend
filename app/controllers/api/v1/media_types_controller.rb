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

      def create
        @media_type = MediaType.new(name: params["attributes"]["name"], format: params["attributes"]["format"], img: params["attributes"]["img"])

        if @media_type.save
          Favorite.create({media_type_id: @media_type.id, user_id: "1"})
        end


        render json: @media_type
      end

    end
  end
end
