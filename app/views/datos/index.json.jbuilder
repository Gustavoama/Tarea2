json.array!(@datos) do |dato|
  json.extract! dato, :id, :Fecha, :Nombre, :Edad, :Direccion, :Comer_o, :Dormir
  json.url dato_url(dato, format: :json)
end
