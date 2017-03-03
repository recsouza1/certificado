require 'active_model'
require 'yaml'
require 'pry'

class Certificado

	attr_accessor :aluno
	
	def initialize(aluno)
		@aluno = aluno
	end

	def corpo
		YAML.load_file('config/pt.yml')['texto']['corpo'].sub('nome_aluno',aluno.nome)
	end

	def image(graduacao)
		imagem = { 
			branca: "background.jpg",
       		azul: "stars.jpg",
       		amarela: "aurora.jpeg"
		}[graduacao.to_sym]

		raise "Graduação \"#{graduacao}\" não cadastrada, entre em contato com fulano." if imagem.nil?

		imagem
	end

end