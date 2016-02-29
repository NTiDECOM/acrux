class ArtistsController < ApplicationController

  before_action :authenticate_user!

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    @modalities = Modality.all
    @institutions = Institution.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
    @modalities = Modality.all
    @institutions = Institution.all
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path, notice: 'Artista salvo com sucesso!'
    else
      render action: :new
    end
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to artists_path, notice: 'Artista atualizado com sucesso!'
    else
      render action: :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    if @artist.delete
      redirect_to artists_path, notice: 'Artista removido com sucesso!'
    else
      redirect_to artists_path, alert: 'Erro ao remover artista!'
    end
  end

  private

  def artist_params
    params.require(:artist).permit(
    :name,
    :address,
    :phone,
    :email,
    :group,
    :has_production,
    :modality_id,
    :institution_id,
    :production_description,
    :other_information,
    :note
    )
  end

end
