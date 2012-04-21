class ScoresController < ApplicationController
  
  # Show the score of all the users
  def index
  end

  # show the score of the current user
  def show
  end

  # store the result of an exercise in the database
  def create
    r = params[:results]
    u = User.find(1) # TODO get logged user
    e = Exercise.find(params[:exercise_id])
    
    unless e.check_results r 
      redirect_to e, flash: { error: 'You got less than the 80% correct. Please try again.', notice: "fix it!", info: ["info1", "info2"]}
    end
    
    u.exercises << e
    u.scores.last.attempts = 1
    u.scores.last.time = Time.now.to_i - params[:time].to_i    
    
    logger.debug "=========================="
    logger.debug "scores#create"
    logger.debug "user="+u.inspect
    logger.debug "score="+u.scores.last.inspect
    logger.debug "=========================="
  end

  # update the exercise entry of a particular exercise
  def update
  end
end
