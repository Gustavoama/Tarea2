class CreateDatos < ActiveRecord::Migration
  def change
    create_table :datos do |t|
      t.datetime :Fecha
      t.string :Nombre
      t.integer :Edad
      t.text :Direccion
      t.boolean :Comer_o
      t.boolean :Dormir

      t.timestamps null: false
    end
  end
end
