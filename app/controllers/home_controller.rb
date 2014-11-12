class HomeController < ApplicationController

  def index
    @minhas_consultas = current_usuario.consultas.where("data > ?",DateTime.now).limit(10).order(data: :asc)
    @meus_medicos = current_usuario.medicos
  end

  def seguir
  end

  def desseguir
  end
end
