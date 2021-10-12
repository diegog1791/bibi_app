class PagesController < ApplicationController
  # skip_before_action :configure_permitted_parameters, only: :home
  skip_before_action :authenticate_user!, only: %i[home acerca garantia aviso_de_privacidad preguntas_frecuentes
                                                   terminos_de_servicio careers arrendador arrendatario]

  def home; end

  def acerca; end

  def garantia; end

  def aviso_de_privacidad; end

  def preguntas_frecuentes; end

  def terminos_de_servicio; end

  def careers; end

  def arrendador; end

  def arrendatario; end
end
