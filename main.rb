require './lib/certificado'
require './lib/aluno'
require './lib/gerar'

aluno = Aluno.new('Rafael','123')

certificado = Certificado.new(aluno)

GeradorCertificado.new.gerar_certificado(certificado)

