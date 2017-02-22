require './lib/certificado'
require './lib/aluno'
require './lib/gerar'

puts "Qual a graduação?"
faixa = gets.chomp
Certificado.new.image(faixa)

aluno = Aluno.new('Rafael','branca')

certificado = Certificado.new(aluno)

GeradorCertificado.new.gerar_certificado(certificado)

