module Api
  module V1
    class AddsController < ApplicationController
      def index
        adds = Add.includes(:add_fieldable)
                  .category(params[:category])
                  .pagylight(params[:page], 20)

        render json: adds, serializer: PaginationSerializer
      end

      def show
        add = Add.find(params[:id])

        render json: add, serializer: AddSerializer
      end
    end
  end
end