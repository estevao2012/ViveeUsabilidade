class Seguir < ActiveRecord::Base
  belongs_to :medico
  belongs_to :usuario
end
