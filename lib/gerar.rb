require 'prawn'
require 'prawn/measurement_extensions'

class GeradorCertificado

	def gerar_certificado(certificado)

		Prawn::Document.generate("/home/recsouza/Rodrigo/test.pdf",
			page_size: "A4",
			page_layout: :landscape,
			margin: 0) do |pdf|
			
			pdf.image "/certificado/images/#{$picture}", fit:[297.mm,210.mm]

			texto_corpo(pdf,certificado)


		end
	end

	def texto_corpo(pdf,certificado)
		pdf.bounding_box([100,280], width:645, height:100) do
				pdf.text certificado.corpo, align: :center,
				inline_format: true,
				size: 10
		end	
	end

end