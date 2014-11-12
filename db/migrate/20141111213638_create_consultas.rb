class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.datetime :data
      t.references :medico, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
