class ModalitiesController < ApplicationController

  def index
    @modalities = Modality.all
  end

  def new
    @modality = Modality.new
  end

  def show
    @modality = Modality.find(params[:id])
  end

  def edit
    @modality = Modality.find(params[:id])
  end

  def create
    @modality = Modality.new(modality_params)
    if @modality.save
      redirect_to modalities_path, notice: 'Modalidade artística salva com sucesso!'
    else
      render action: :new
    end
  end

  def update
    @modality = Modality.find(params[:id])
    if @modality.update(modality_params)
      redirect_to modalities_path, notice: 'Modalidade artística atualizada com sucesso!'
    else
      render action: :edit
    end
  end

  def destroy
    @modality = Modality.find(params[:id])
    if @modality.delete
      redirect_to modalities_path, notice: 'Modalidade removida com sucesso!'
    else
      redirect_to modalities_path, alert: 'Erro ao remover modalidade!'
    end
  end

  private

  def modality_params
    params.require(:modality).permit(:name)
  end

end
