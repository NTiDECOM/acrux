class Api::V1::ArtistsController < ApplicationController

  def index
    render json: Artist.all, status: 200
  end

end
