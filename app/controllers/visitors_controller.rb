class VisitorsController < ApplicationController

  def testpdf
    options = {
      :filename => params[:filename],
      :engine => params[:engine],
      'orientation' => params[:orientation],
      'margin-top' => params[:top],
      'margin-bottom' => params[:bottom],
      'margin-right' => params[:right],
      'margin-left' => params[:left]
    }
    options['cover'] = testpdf_cover_url if params[:cover].present?
    options['header'] = testpdf_header_url if params[:header].present?
    options['footer'] = testpdf_footer_url if params[:footer].present?
    render_pdf_from root_url, options
  end

  # only for wkhtmltopdf
  def testpdf_cover
    render 'visitors/pdf/cover', layout: false
  end

  # only for wkhtmltopdf
  def testpdf_header
    render 'visitors/pdf/header', layout: false
  end

  # only for wkhtmltopdf
  def testpdf_footer
    render 'visitors/pdf/footer', layout: false
  end

end
