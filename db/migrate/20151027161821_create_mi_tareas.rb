class CreateMiTareas < ActiveRecord::Migration
  def change
    create_table :mi_tareas do |t|
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
