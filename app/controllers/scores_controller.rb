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
    
    unless e.check_answers r.values.collect{|e| e=e.to_i} 
      redirect_to e, flash: { error: 'You got less than the 80% correct. Please try again.' }
    else
      flash.now[:success] = "Great Job! All your answers were correct!"
    end
    
    u.exercises << e
    attempts = 1
    
    if params.key? :elapsed_time
      time = params[:elapsed_time] # TODO add javascript counter instead
    else
      time = Time.now.to_i - params[:start_time].to_i
    end
    
    u.scores.last.update_attributes(attempts: attempts, time: time)
    
    logger.debug "=========================="
    logger.debug "scores#create"
    logger.debug r.inspect
    logger.debug e.inspect
    logger.debug u.scores.inspect
    logger.debug "user="+u.inspect
    logger.debug "score="+u.scores.last.inspect
    logger.debug "=========================="
  end

  # update the exercise entry of a particular exercise
  def update
  end
end
