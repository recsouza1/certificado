require './lib/certificado'
require './lib/aluno'
require './lib/gerar'

puts "Qual a graduação?"
belt = gets.chomp

aluno = Aluno.new('Rafael', belt)

certificado = Certificado.new(aluno)

$picture = certificado.image(belt)

GeradorCertificado.new.gerar_certificado(certificado)