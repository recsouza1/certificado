class Aluno

	attr_accessor :nome, :faixa
	
	def initialize(nome,faixa=nil)
		@nome = nome
		@faixa = faixa
	end

end