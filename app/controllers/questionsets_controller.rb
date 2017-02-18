class QuestionsetsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index

=begin
  	Order.joins(:customer).where(customers: {name: 'Customer 1'})

  	QuestionSet.joins(:question)

  	Category.joins(:posts).collect{|category| category.posts.map{|post| post.attributes.merge(category.attributes) } }


	QuestionSet.joins(:question).collect{}


	@comments = Comment.joins(:user)
			.select("comments.*, users.first_name")
			.where(study_id: @study.id)


			QuestionSet.joins(:question).select("question_sets.*, questions.description")

=end

    #@question_sets = QuestionSet.all
    @question_sets = QuestionSet.joins(:question).select("question_sets.*, questions.*")

  end
end
