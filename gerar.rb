require 'prawn'
require 'prawn/measurement_extensions'

Prawn::Document.generate("/home/recsouza/Rodrigo/test.pdf",
	page_size: "A4",
	page_layout: :landscape,
	background: "/home/recsouza/Downloads/background.jpg",
	margin: 0) do |pdf|
		#text "Executive landscape page"
	  pdf.fill_color "40464e"
      pdf.text "Aprendendo Ruby", :size => 40, :style => :bold, :align => :center

      pdf.move_down 30
      pdf.text "Certificado", :size => 24, :align => :center, :style => :bold

      pdf.move_down 30
      pdf.text "Certificamos que <b>Rodrigo Souza</b> participou...", :inline_format => true

      pdf.move_down 15
      pdf.text "Recife", :size => 24, :align => :center, :style => :bold

      pdf.move_down 30
      pdf.text "Sei Lá", :size => 24

      pdf.move_up 5
      pdf.font "Helvetica"
      pdf.text "http://daka.com.br", :size => 10

  	  pdf.image "/home/recsouza/Downloads/background.jpg", fit:[297.mm,210.mm]
 	end

	# class Certificate
	# attr_accessor :path

	# def initialize(path = nil)
 #       @path = path
 #    end

 #    def save
 #    	pdf.render_file(path)
 #  	end

 #    PDF_CONFIG = {
 #    page_size: "A4",
 #    page_layout: :landscape,
 #    background: "/home/recsouza/Downloads/background.jpg",
 #    margin: 0
 #  	}
	# end

	# def pdf
 #    Prawn::Document.new(PDF_CONFIG) do |pdf|
 #      pdf.fill_color "40464e"
 #      pdf.text "Aprendendo Ruby", :size => 40, :style => :bold, :align => :center

 #      pdf.move_down 30
 #      pdf.text "Certificado", :size => 24, :align => :center, :style => :bold

 #      pdf.move_down 30
 #      pdf.text "Certificamos que <b>Rodrigo Souza</b> participou...", :inline_format => true

 #      pdf.move_down 15
 #      pdf.text "Recife, #{I18n.l(Time.now, :format => :short_date)}."

 #      pdf.move_down 30
 #      pdf.text "Sei Lá", :size => 24

 #      pdf.move_up 5
 #      pdf.font "Helvetica"
 #      pdf.text "http://daka.com.br", :size => 10
 #    end
 #  end
