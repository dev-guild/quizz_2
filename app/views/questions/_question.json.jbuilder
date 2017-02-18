json.extract! question, :id, :description, :optionA, :optionB, :optionC, :optionD, :answer, :created_at, :updated_at
json.url question_url(question, format: :json)