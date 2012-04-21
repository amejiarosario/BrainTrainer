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
    
    user_rating = e.rate r.values.collect{|e| e=e.to_i}
    
    unless user_rating > 80
      redirect_to e, flash: { error: "Please try again, you need more than #{user_rating}% correct answers." }
    else
      flash.now[:success] = "Great Job! You got the #{user_rating}% of correct answers!"
    end
    
    u.exercises << e
    
    if params.key? :elapsed_time
      time = params[:elapsed_time]
    else
      time = Time.now.to_i - params[:start_time].to_i
    end
    
    u.scores.where(exercise_id: e.id).last.update_attributes(time: time, rating: user_rating)
    
    redirect_to e, flash: { error: u.errors } if u.errors.any?
    
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
