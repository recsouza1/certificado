require './lib/certificado'
require './lib/aluno'
require './lib/gerar'

pdf_path = "/home/recsouza/Rodrigo/"

file_path = "config/test.yml"


file = File.open(file_path, 'r')

file.each_line do |line|
	names = line.chomp
	aluno = Aluno.new(names, 'branca')
	certificado = Certificado.new(aluno)
	GeradorCertificado.new.gerar_certificado(certificado, pdf_path, names)
end


# while line = file.gets
# 	#Tava dando erro quando passava a line no parâmetro, fazendo assim parou de dar erro
# 	names = line.chomp
# 	aluno = Aluno.new(names, 'branca')
# 	certificado = Certificado.new(aluno)
# 	GeradorCertificado.new.gerar_certificado(certificado, pdf_path, names)
# end



# puts "Qual a graduação?"
# belt = gets.chomp

# aluno = Aluno.new('Rafael', belt)

# certificado = Certificado.new(aluno)

# GeradorCertificado.new.gerar_certificado(certificado, pdf_path)