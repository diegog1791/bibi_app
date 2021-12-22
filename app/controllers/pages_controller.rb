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

  def dashboard; end

  def perfil
    @nombre = nombre
    @apellido_paterno = apellido_paterno
    @apellido_materno = apellido_materno
    @fecha_de_union_a_bibi = fecha_de_union_a_bibi
    @cumpleanos = cumpleanos
    @telefono = telefono
    @direccion_completa = direccion_completa
    @acerca_de_mi = acerca_de_mi
    @nombre_cuenta = nombre_cuenta
    @direccion = direccion
    @colonia = colonia
    @codigo_postal = codigo_postal
    @ciudad = ciudad
    @estado = estado
    @pais = pais
    @rfc = rfc
  end

  private

  ########### Pefil Methods ###########

  def nombre
    current_user.name || "Aún no nos has dicho tu nombre."
  end

  def apellido_paterno
    current_user.last_name || "Aún no nos has dicho tu apellido paterno."
  end

  def apellido_materno
    current_user.mothers_last_name || "Aún no nos has dicho tu apellido materno."
  end

  def mes_union_bibi
    current_user.created_at.month
  end

  def fecha_de_union_a_bibi
    current_user.created_at.strftime("Te uniste el %d de #{written_month(mes_union_bibi)} de %Y")
  end

  def mes_nacimiento
    current_user.birthday ? current_user.birthday.month : nil
  end

  def fecha_nacimiento
    current_user.birthday
  end

  def cumpleanos
    fecha_nacimiento ? "#{fecha_nacimiento.day}/#{written_month(mes_nacimiento)}/#{fecha_nacimiento.year}" : "Aún no nos has dicho tu cumpleaños."
  end

  def telefono
    "+#{current_user.bb_coun_try_code} #{current_user.cellphone_number}"
  end

  def direccion
    current_user.drop_off_location || "Aún no has agregado tu dirección, agrégala para poder rentar productos."
  end

  def colonia
    current_user.neighborhood || "Aún no has agregado tu colonia. Completa tu información para poder rentar productos."
  end

  def codigo_postal
    current_user.zip_code || "Aún no has agregado tu código postal. Agrégalo para poder brindarte resultados según tu ubicación."
  end

  def estado
    current_user.state || "Aún no has agreado tu estado. Agrégalo para poder brindarte resultados según tu ubicación."
  end

  def direccion_completa
    "#{direccion}, Col. #{colonia}, C.P.: #{codigo_postal}, #{estado}"
  end

  def acerca_de_mi
    current_user.about || "Aquí puedes agregar información acerca de tí, para que otros usuarios puedan conocer mejor tus necesidades y/o servicios."
  end

  def written_month(number)
    month = nil
    case number
    when 1 then month = "Enero"
    when 2 then month = "Febrero"
    when 3 then month = "Marzo"
    when 4 then month = "Abril"
    when 5 then month = "Mayo"
    when 6 then month = "Junio"
    when 7 then month = "Julio"
    when 8 then month = "Agosto"
    when 9 then month = "Septiembre"
    when 10 then month = "Octubre"
    when 11 then month = "Noviembre"
    when 12 then month = "Diciembre"
    end
    month
  end

  ########### Cuenta Methods ###########

  def nombre_cuenta
    current_user.name ? "#{nombre} #{apellido_paterno.chars.first}" : "Agrega tu nombre y apellidos por favor."
  end

  def ciudad
    current_user.city || "Agrega tu ciudad a tu perfil."
  end

  def pais
    current_user.bb_coun_try || "Agrega tu país."
  end

  def rfc
    current_user.rfc || "Es necesario agregar tu RFC para rentar productos."
  end
end
