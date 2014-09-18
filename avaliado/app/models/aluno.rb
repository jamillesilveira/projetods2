class Aluno < ActiveRecord::Base
	validates :matricula, uniqueness: true, 
				length: { is: 9}

	has_one: Disciplina
end
