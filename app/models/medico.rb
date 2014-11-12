class Medico < ActiveRecord::Base 
  extend Enumerize

  has_many :seguir
  has_many :usuarios, through: :seguir 
  has_many :avaliacoes, class_name: "AvaliacaMedico"
  has_many :consultas

  has_attached_file :avatar, :styles => { :high => "600x600>",:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  enumerize :especialidade, in: ["Ortopedista", "Pediatra", "Otorrino", "Dermatologista"] 

  def to_s
    "#{nome} - #{especialidade}"
  end

  def media_avaliacao
    sum = 0
    self.avaliacoes.each do |single|
      sum += single.rating
    end

    return sum.to_f/avaliacoes.size.to_f
  end
end
