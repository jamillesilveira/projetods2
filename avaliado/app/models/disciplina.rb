class Disciplina < ActiveRecord::Base
	validates :codigoDisciplina, presence: true,
                numericality: { only_integer: true }

   	has_many: Bimestre
end
