class DocumentsController < ApplicationController
  # GET /documents/:id
  def download
    document = Document.new
    send_data document.to_io, content_type: 'application/pdf', filename: "document-#{document.id}.pdf"
  end
end
