class AddColumnEspecialidadeToMedico < ActiveRecord::Migration
  def change
    add_column :medicos, :especialidade, :string
  end
end
