json.extract! project, :id, :name, :deadline, :price, :content, :created_at, :updated_at
json.url project_url(project, format: :json)
