json.extract! session, :id, :date, :start_session, :end_session, :note, :created_at, :updated_at
json.url session_url(session, format: :json)
