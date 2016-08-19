class PollsController < ApplicationController

  def index
    @polls = Poll.all
    render json: results
  end

  def results
    @results = {}
    @questions = []

    @polls.map do |poll|
      @results[poll.name] = add_questions(poll)
    end
    @results
  end


  def add_questions(poll)
    poll.questions.map do |question|
      @questions << Hash[question.prompt, add_options(question)]
    end
    @questions
  end

  def add_options(question)
    question.options.map { |option| Hash[option.name, option.score] }
  end

end
