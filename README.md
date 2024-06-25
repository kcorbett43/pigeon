Kevin Corbett Pigeon Take Home:

Set Up Instructions:
- Run: docker-compose up
- Go to http://localhost:3000/documents
- Create documents or export to CSV

Code:
- Main logic is contained in: app/models/document.rb, app/controllers/document_controller.rb, and app/views/documents/index.html.erb
- app/models/document.rb: implements "self.to_csv" method for creating a CSV object that can be downloaded.
- app/controllers/document_controller.rb: implements create, index, and download to handle database manipulation and providing information to the frontend.
- app/views/documents/index.html.erb: frontend code for viewing, creating, and downloading document information
- routes.rb: creates routes for create, index and download for documents

Database: database information is contained in db/schema.rb. db/migrate/..._create_documents.rb is where the migration logic is.