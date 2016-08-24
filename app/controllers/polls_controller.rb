class PollsController < ApplicationController

  def index
    @polls = Poll.all
    render json: results
  end

  def results
    @results = []

    add_poll
    @results
  end

  def add_poll
    @polls.map do |poll|
      @results << Hash['name', poll.name, 'questions', add_questions(poll)]
    end
    @results
  end

  def add_questions(poll)
    poll.questions.map { |question| Hash['prompt', question.prompt, 'options', add_options(question)] }
  end

  def add_options(question)
    question.options.map { |option| Hash['name', option.name, 'score', option.score] }
  end

end
