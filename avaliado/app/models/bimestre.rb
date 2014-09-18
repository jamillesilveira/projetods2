class Bimestre < ActiveRecord::Base
	validates :codigoBimestre, presence: true,
                numericality: { only_integer: true }

    has_many: Lista
end
