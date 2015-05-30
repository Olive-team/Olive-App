module Api
  module V1
    class AddsController < ApplicationController
      # respond_to :json
      def index
        adds = Add.all.pagylight(params[:page], 20)

        render json: adds, serializer: PaginationSerializer
      end

      def show
        add = Add.find(params[:id])

        render json: add, serializer: AddSerializer
      end
    end
  end
end