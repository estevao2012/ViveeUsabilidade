class AddColumnsToUsuario < ActiveRecord::Migration
  def change 
    add_column :usuarios, :nome, :string
    add_column :usuarios, :idade, :string
    add_column :usuarios, :sexo, :string
    add_column :usuarios, :cpf, :string
    add_column :usuarios, :rua, :string
    add_column :usuarios, :numero, :string
    add_column :usuarios, :bairro, :string
    add_column :usuarios, :complemento, :string
    add_column :usuarios, :cidade, :string
    add_column :usuarios, :estado, :string 
  end
end
