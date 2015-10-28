class CreateSusDatos < ActiveRecord::Migration
  def change
    create_table :sus_datos do |t|
      t.datetime :Fecha
      t.string :Nombre
      t.integer :Edad
      t.text :Direccion
      t.boolean :Comer
      t.boolean :Dormir

      t.timestamps null: false
    end
  end
end
