class CreateAvaliacaMedicos < ActiveRecord::Migration
  def change
    create_table :avaliaca_medicos do |t|
      t.references :medico, index: true
      t.string :titulo
      t.string :texto
      t.integer :rating

      t.timestamps
    end
  end
end
