class AddColumnStatusToConsulta < ActiveRecord::Migration
  def change
    add_column :consultas, :status, :string
  end
end
