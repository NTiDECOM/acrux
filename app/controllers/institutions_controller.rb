class InstitutionsController < ApplicationController

  before_action :authenticate_user!

  def index
    @institutions = Institution.all
  end

  def new
    @institution = Institution.new
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def create
    @institution = Institution.new(institution_params)
    if @institution.save
      redirect_to institutions_path, notice: 'Instituição cadastrada com sucesso!'
    else
      render action: :new
    end
  end

  def update
    @institution = Institution.find(params[:id])
    if @institution.update(institution_params)
      redirect_to institutions_path, notice: 'Instituição atualizada com sucesso!'
    else
      render action: :edit
    end
  end

  def destroy
    @institution = Institution.find(params[:id])
    if @institution.delete
      redirect_to institutions_path, notice: 'Instituição removida com sucesso!'
    else
      redirect_to institutions_path, alert: 'Erro ao remover instituição!'
    end
  end

  private

  def institution_params
    params.require(:institution).permit(:name, :address)
  end
end
