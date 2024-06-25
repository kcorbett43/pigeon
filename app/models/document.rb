require 'csv'

class Document < ApplicationRecord

  def self.to_csv 
    attributes = ["Title", "Author"]
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |document|
        document_attributes = [document.title, document.author]
      end
    end
  end

end
