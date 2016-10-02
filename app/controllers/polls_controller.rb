class PollsController < ApplicationController

  def index
    @polls = Poll.all
    render json: @polls.to_json(include: {
                                  questions: {
                                    include: :options
                                  }
                                })
  end

  def new
    @poll = Poll.new(poll_params)


    if @poll.save
      @poll.update_attribute(name: poll_params[:name])
                           # .to_json.map do |question|
      # @poll.questions << question
      # poll_params[:questions][-1][:options].map do |option|
       # @poll.questions.last << option
     # end
    end

    render json: @poll
  end

  private
  def poll_params
    params.require(:poll).permit!(:name, questions_attributes: [:id, :prompt, :poll_id, options_attributes: [:id, :name, :score, :question_id]])
  end

end
