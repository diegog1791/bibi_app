class ProfileController < ApplicationController
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

  def dashboard; end

  private

  ########### Pefil Methods ###########

  def nombre
    current_user.name || "Nombre."
  end

  def apellido_paterno
    current_user.last_name || "Apellido paterno."
  end

  def apellido_materno
    current_user.mothers_last_name || "Apellido materno."
  end

  def mes_union_bibi
    current_user.created_at.month
  end

  def fecha_de_union_a_bibi
    current_user.created_at.strftime("#{written_month(mes_union_bibi)}/%Y")
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
    current_user.drop_off_location || "Agregar calle y número."
  end

  def colonia
    current_user.neighborhood || "Agrega tu colonia."
  end

  def codigo_postal
    current_user.zip_code || "Agrega tu código postal."
  end

  def estado
    current_user.state || "Ingresa tu estado."
  end

  def direccion_completa
    "#{direccion}, Col. #{colonia}, C.P.: #{codigo_postal}, #{estado}"
  end

  def acerca_de_mi
    current_user.about || "Aquí puedes agregar información acerca de tí."
  end

  def written_month(number)
    month = nil
    case number
    when 1 then month = "Ene"
    when 2 then month = "Feb"
    when 3 then month = "Mar"
    when 4 then month = "Abr"
    when 5 then month = "May"
    when 6 then month = "Jun"
    when 7 then month = "Jul"
    when 8 then month = "Ago"
    when 9 then month = "Sep"
    when 10 then month = "Oct"
    when 11 then month = "Nov"
    when 12 then month = "Dic"
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
