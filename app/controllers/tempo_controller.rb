class TempoController < ApplicationController


  def index
  end


  def show
    cidade = params[:cidade]
    @tempo = TempoService.consultar_tempo(cidade)

    if @tempo
      render :show
    else
      flash[:alert] = "Não foi possível consultar o tempo para a cidade informada"
      redirect_to root_path
    end
  end

end
