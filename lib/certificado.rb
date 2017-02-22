require 'active_model'
require 'yaml'

class Certificado
	
	attr_accessor :aluno
	
	def initialize(aluno)
		@aluno = aluno
	end

	def corpo
		YAML.load_file('config/pt.yml')['texto']['corpo'].sub('nome_aluno',aluno.nome)
	end

	def image(graduacao)
		background = { branca: background.jpg,
		               azul: stars.jpg,
		               amarela: aurora.jpg
		}
		$picture = background.select { |key, value| key.to_s.match(graduacao)}
	end


end