class LayoutsController < ApplicationController
  def index
    render "layouts/front_end_layout", layout: nil
  end
end