class DocumentsController < ApplicationController

  def create 
    document = Document.create(document_params)
    redirect_to documents_path
  end

  def index 
    @documents = Document.all
  end

  def download
    documents = Document.all 
    send_data documents.to_csv, filename: "documents-#{Date.today}.csv" 
  end

  private

    def document_params
      params.require(:document).permit(:title, :author)
    end

end