class QuestionsetsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index

=begin
  	Order.joins(:customer).where(customers: {name: 'Customer 1'})

  	QuestionSet.joins(:question)

=end

    @question_sets = QuestionSet.all

  end
end
