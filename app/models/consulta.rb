class Consulta < ActiveRecord::Base
  extend Enumerize 
  
  belongs_to :medico
  belongs_to :usuario 
  enumerize :status, in: [ :pendente, :marcada, :realizada, :cancelada], default: :pendente

end
