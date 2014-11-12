class CreateSeguires < ActiveRecord::Migration
  def change
    create_table :seguires do |t|
      t.references :medico, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
