# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 49) do

  create_table "actividads", :force => true do |t|
    t.column "clave_inegi", :string
    t.column "actividad",   :string
  end

  create_table "ahorros", :force => true do |t|
    t.column "monto",      :string
    t.column "cliente_id", :integer
    t.column "credito_id", :integer
    t.column "hora_fecha", :datetime
  end

  create_table "bancos", :force => true do |t|
    t.column "nombre", :string
  end

  create_table "civils", :force => true do |t|
    t.column "civil", :string
  end

  create_table "clientes", :force => true do |t|
    t.column "identificador",   :string,  :limit => 18
    t.column "paterno",         :string
    t.column "materno",         :string
    t.column "nombre",          :string
    t.column "fecha_nac",       :date
    t.column "rfc",             :string,  :limit => 13
    t.column "curp",            :string,  :limit => 18
    t.column "clave_ife",       :string
    t.column "sexo",            :string,  :limit => 1
    t.column "tipo_propiedad",  :string
    t.column "tipo_persona",    :string
    t.column "direccion",       :string
    t.column "colonia",         :string
    t.column "codigo_postal",   :string
    t.column "telefono",        :string,  :limit => 10
    t.column "fax",             :string,  :limit => 10
    t.column "email",           :string
    t.column "folio_rfc",       :string,  :limit => 13
    t.column "civil_id",        :integer
    t.column "escolaridad_id",  :integer
    t.column "vivienda_id",     :integer
    t.column "localidad_id",    :integer
    t.column "nacionalidad_id", :integer
    t.column "edo_residencia",  :string
    t.column "st",              :integer
  end

  create_table "clientes_grupos", :force => true do |t|
    t.column "cliente_id",   :integer
    t.column "grupo_id",     :integer
    t.column "activo",       :integer
    t.column "fecha_inicio", :datetime
    t.column "fecha_fin",    :datetime
  end

  add_index "clientes_grupos", ["cliente_id"], :name => "index_clientes_grupos_on_cliente_id"
  add_index "clientes_grupos", ["grupo_id"], :name => "index_clientes_grupos_on_grupo_id"

  create_table "colonias", :force => true do |t|
    t.column "colonia",     :string
    t.column "clave_inegi", :string
    t.column "ejido_id",    :integer
    t.column "st",          :integer
  end

  create_table "configuracion", :force => true do |t|
    t.column "nombre_empresa",    :string
    t.column "direccion",         :string
    t.column "ciudad",            :string
    t.column "prefijo",           :string
    t.column "telefono",          :string
    t.column "activo",            :string,  :default => "1"
    t.column "ultima_referencia", :integer
  end

  create_table "controllers", :force => true do |t|
    t.column "controller",  :string
    t.column "descripcion", :string
  end

  create_table "creditos", :force => true do |t|
    t.column "fecha_inicio",      :date
    t.column "fecha_fin",         :date
    t.column "num_referencia",    :string
    t.column "monto",             :float
    t.column "tasa_interes",      :float
    t.column "interes_moratorio", :string
    t.column "identificador",     :string
    t.column "tipo_interes",      :string
    t.column "linea_id",          :integer
    t.column "cliente_id",        :integer
    t.column "promotor_id",       :integer
    t.column "destino_id",        :integer
    t.column "grupo_id",          :integer
    t.column "producto_id",       :integer
    t.column "status",            :integer
  end

  create_table "ctaconcentradoras", :force => true do |t|
    t.column "num_cta",        :string
    t.column "cta_contable",   :string
    t.column "sucbancaria_id", :integer
  end

  create_table "ctaliquidadoras", :force => true do |t|
    t.column "num_cta",        :string
    t.column "cta_contable",   :string
    t.column "sucbancaria_id", :integer
  end

  create_table "cuentas", :force => true do |t|
    t.column "sCtaNum", :string, :limit => 20
    t.column "sNombre", :string, :limit => 50
  end

  create_table "datafiles", :force => true do |t|
    t.column "numero",             :string,   :limit => 4
    t.column "clave",              :string,   :limit => 4
    t.column "fecha_hora_archivo", :datetime
    t.column "fecha_hora_carga",   :datetime
    t.column "nombre_archivo",     :string
    t.column "num_lineas",         :integer
  end

  create_table "destinos", :force => true do |t|
    t.column "destino",    :string
    t.column "user_id",    :integer
    t.column "fecha_hora", :datetime
  end

  create_table "ejidos", :force => true do |t|
    t.column "ejido",        :string
    t.column "clave_inegi",  :string
    t.column "municipio_id", :integer
    t.column "st",           :integer
  end

  create_table "escolaridads", :force => true do |t|
    t.column "escolaridad", :string
    t.column "estudios_id", :integer
  end

  create_table "estados", :force => true do |t|
    t.column "estado",     :string
    t.column "edo_inegi",  :string
    t.column "edo_renapo", :string
  end

  create_table "festivos", :force => true do |t|
    t.column "fecha",       :date
    t.column "descripcion", :string
  end

  create_table "fondeos", :force => true do |t|
    t.column "acronimo",  :string
    t.column "fuente",    :string
    t.column "domicilio", :string
    t.column "telefono",  :string
  end

  create_table "garantias", :force => true do |t|
    t.column "garantia", :string
  end

  create_table "garantias_referencias", :id => false, :force => true do |t|
    t.column "referencia_id", :integer
    t.column "garantia_id",   :integer
  end

  create_table "giros", :force => true do |t|
    t.column "giro",      :string
    t.column "codigo",    :string
    t.column "subsector", :string
  end

  create_table "grupos", :force => true do |t|
    t.column "nombre", :string
  end

  create_table "jerarquias", :force => true do |t|
    t.column "jerarquia", :string
  end

  create_table "lineas", :force => true do |t|
    t.column "cuenta_cheques",      :string
    t.column "fecha_aut",           :date
    t.column "autorizado",          :float
    t.column "estatus",             :string,  :limit => 11
    t.column "gcnf",                :string
    t.column "fondeo_id",           :integer
    t.column "ctaconcentradora_id", :integer
    t.column "ctaliquidadora_id",   :integer
  end

  create_table "localidads", :force => true do |t|
    t.column "loc_id",       :string
    t.column "municipio_id", :integer
    t.column "localidad",    :string
  end

  create_table "logs", :force => true do |t|
    t.column "operacion",  :string
    t.column "fecha_hora", :datetime
    t.column "clase",      :string
    t.column "user_id",    :integer
    t.column "objeto_id",  :integer
  end

  create_table "miembros", :force => true do |t|
    t.column "credito_id",   :integer
    t.column "jerarquia_id", :integer
    t.column "cliente_id",   :integer
  end

  create_table "movimientos", :force => true do |t|
    t.column "tipo",     :string
    t.column "capital",  :float
    t.column "fecha",    :date
    t.column "interes",  :float
    t.column "concepto", :string
    t.column "pago_id",  :integer
  end

  create_table "municipios", :force => true do |t|
    t.column "municipio",   :string
    t.column "clave_inegi", :string
    t.column "estado_id",   :integer
  end

  create_table "nacionalidads", :force => true do |t|
    t.column "pais_id",   :string
    t.column "pais",      :string
    t.column "pais_gent", :string
  end

  create_table "negocios", :force => true do |t|
    t.column "nombre",        :string
    t.column "puesto",        :string
    t.column "direccion",     :string
    t.column "descripcion",   :string
    t.column "telefono",      :string,  :limit => 10
    t.column "num_empleados", :integer
    t.column "ing_semanal",   :float
    t.column "cliente_id",    :integer
    t.column "actividad_id",  :integer
  end

  create_table "pagos", :force => true do |t|
    t.column "num_pago",             :integer
    t.column "fecha_limite",         :date
    t.column "capital_minimo",       :string
    t.column "interes_minimo",       :string
    t.column "fecha",                :date
    t.column "capital",              :string
    t.column "interes",              :string
    t.column "moratorio",            :string
    t.column "pagado",               :integer
    t.column "credito_id",           :integer
    t.column "cliente_id",           :integer
    t.column "descripcion",          :string
    t.column "int_devengados",       :float
    t.column "comisiones",           :string
    t.column "iva_comisiones",       :string
    t.column "iva_moratorio",        :string
    t.column "saldo_inicial",        :string
    t.column "saldo_final",          :string
    t.column "principal_recuperado", :string
    t.column "st",                   :integer
  end

  create_table "pagoslineas", :force => true do |t|
    t.column "linea_id",      :integer
    t.column "fecha",         :date
    t.column "monto",         :string
    t.column "observaciones", :string
    t.column "st",            :integer
  end

  create_table "periodos", :force => true do |t|
    t.column "nombre",    :string
    t.column "dias",      :integer
    t.column "pagos_mes", :integer
  end

  create_table "polizas", :force => true do |t|
    t.column "iEjer",     :integer
    t.column "iMes",      :integer
    t.column "sTpPol",    :string,  :limit => 3
    t.column "sPolNum",   :string,  :limit => 6
    t.column "sPolMov",   :string,  :limit => 6
    t.column "iDia",      :integer
    t.column "iNatura",   :integer
    t.column "rImpMov",   :float
    t.column "sCvIVA",    :string,  :limit => 1
    t.column "iAplica",   :integer
    t.column "sCnc",      :string,  :limit => 3
    t.column "sRefere",   :string,  :limit => 8
    t.column "sClvCnc",   :string,  :limit => 3
    t.column "sNatMov",   :string,  :limit => 1
    t.column "rImpMovRS", :float
    t.column "sCtaNom",   :string,  :limit => 30
    t.column "cuenta_id", :integer
  end

  create_table "productos", :force => true do |t|
    t.column "producto",        :string,  :limit => 100
    t.column "intereses",       :float
    t.column "moratorio",       :float
    t.column "ahorro",          :float
    t.column "num_pagos",       :integer
    t.column "tasa_anualizada", :string,  :limit => 10
    t.column "periodo_id",      :integer
  end

  create_table "promotors", :force => true do |t|
    t.column "paterno",       :string
    t.column "materno",       :string
    t.column "nombre",        :string
    t.column "direccion",     :string
    t.column "telefono",      :string,  :limit => 10
    t.column "celular",       :string,  :limit => 10
    t.column "email",         :string
    t.column "observaciones", :string
    t.column "sucursal_id",   :integer
    t.column "st",            :integer
  end

  create_table "referencias", :force => true do |t|
    t.column "paterno",    :string
    t.column "materno",    :string
    t.column "nombre",     :string
    t.column "parentesco", :string
    t.column "direccion",  :string
    t.column "telefono",   :string,  :limit => 10
    t.column "tipo",       :string
    t.column "credito_id", :integer
  end

  create_table "roles", :force => true do |t|
    t.column "name", :string
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.column "user_id", :integer
    t.column "role_id", :integer
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "rols", :force => true do |t|
    t.column "nombre", :string
    t.column "st",     :integer
  end

  create_table "sectors", :force => true do |t|
    t.column "sector", :string
  end

  create_table "status", :force => true do |t|
    t.column "statu", :string
  end

  create_table "subsectors", :force => true do |t|
    t.column "subsector", :string
    t.column "sector_id", :integer
  end

  create_table "sucbancarias", :force => true do |t|
    t.column "num_sucursal", :string,  :limit => 4
    t.column "nombre",       :string
    t.column "banco_id",     :integer
  end

  create_table "sucursals", :force => true do |t|
    t.column "nombre",        :string
    t.column "gerente",       :string
    t.column "telefono",      :string
    t.column "direccion",     :string
    t.column "codigo_postal", :string
    t.column "municipio_id",  :integer
    t.column "st",            :integer
  end

  create_table "systables", :force => true do |t|
    t.column "controller_id", :integer
    t.column "rol_id",        :integer
    t.column "consultar",     :integer, :default => 1
    t.column "actualizar",    :integer, :default => 0
    t.column "insertar",      :integer, :default => 1
    t.column "eliminar",      :integer, :default => 1
  end

  create_table "transferencias", :force => true do |t|
    t.column "origen_id",     :integer
    t.column "destino_id",    :integer
    t.column "user_id",       :integer
    t.column "fecha",         :date
    t.column "monto",         :string
    t.column "observaciones", :string
    t.column "st",            :integer
  end

  create_table "users", :force => true do |t|
    t.column "login",    :string
    t.column "password", :string
    t.column "nombre",   :string
    t.column "rol_id",   :integer, :default => 1
    t.column "st",       :integer
  end

  create_table "viviendas", :force => true do |t|
    t.column "tipo_vivienda", :string
  end

end
