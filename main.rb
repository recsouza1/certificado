require './lib/certificado'
require './lib/aluno'
require './lib/gerar'

pdf_path = "/home/recsouza/Rodrigo/"

file_path = "config/test.yml"


file = File.open(file_path, 'r')
while line = file.gets
	aluno = Aluno.new('#{line}', 'branca')
	certificado = Certificado.new(aluno)
	GeradorCertificado.new.gerar_certificado(certificado, pdf_path, line)
end



# puts "Qual a graduação?"
# belt = gets.chomp

# aluno = Aluno.new('Rafael', belt)

# certificado = Certificado.new(aluno)

# GeradorCertificado.new.gerar_certificado(certificado, pdf_path)