json.extract! bug_model, :id, :title, :description, :issue_type, :priority, :status, :created_at, :updated_at
json.url bug_model_url(bug_model, format: :json)
