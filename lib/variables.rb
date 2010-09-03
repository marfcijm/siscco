  module Variables
  #----------Variables para combos globales -----------
  $estados = Estado.find(:all, :order => "estado")
  $ejidos = Ejido.find(:all, :order => "ejido")
  $colonias = Colonia.find(:all, :order => "colonia")
  $municipios = Municipio.find(:all, :order => "municipio")
  $clientes = Cliente.find(:all, :order => "paterno, materno, nombre")
  $bancos = Banco.find(:all)
  $ejidos = Ejido.find(:all)
  $lineas = Linea.find(:all)
  $promotores = Promotor.find(:all, :order => "nombre")
  $destinos = Destino.find(:all)
  $grupos = Grupo.find(:all, :order => "nombre")
  $fondeos = Fondeo.find(:all, :order => "fuente")
  $periodos = Periodo.find(:all, :order => "dias")
  $productos = Producto.find(:all, :order => "producto")
  $users = User.find(:all, :order => "login")
  $civiles = Civil.find(:all)
  $escolaridades = Escolaridad.find(:all)
  $viviendas = Vivienda.find(:all)
  $nacionalidades = Nacionalidad.find(:all, :order => "pais_gent")
  $sucursales = Sucursal.find(:all, :order => "nombre")

  #----------- Cambio de idioma de las fechas --------------------
  Date::MONTHNAMES = [nil] + %w(Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre)
  Date::DAYNAMES = %w(Domingo Lunes Martes Miercoles Jueves Viernes Sábado)
  Date::ABBR_MONTHNAMES = [nil] + %w(ene Feb Mar Abr May Jun Jul Ago Sep Oct Nov Dic)
  Date::ABBR_DAYNAMES = %w(Dom Lun Mar Mie Jue Vie Sab)

  #------ Configuracion -----
  @conf = Configuracion.find(:first, :conditions => "activo = 1")
  CIUDAD_EMPRESA = @conf.ciudad
  NOMBRE_EMPRESA = @conf.nombre_empresa
  DIRECCION_EMPRESA = @conf.direccion
  TELEFONO_EMPRESA = @conf.telefono
end
