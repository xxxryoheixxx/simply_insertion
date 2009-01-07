class ContactsController < ApplicationController
  
  layout "default"
  before_filter :create_confirmation, :only => :create

  def show
    new
    render :action => :new
  end

  def new 
    @select = "new"
    @user = User.new
  end

  def passport
    @select = "passport"
    @passport = Passport.new
  end

  def question
    @select = "question"
    @question = Question.new
  end

  def payment
    @select = "payment"
  end

  def create
    @select = "create"
  end

  private

  def create_confirmation
    if params.has_key?("to_new")
      new
      render :action => :new
    elsif params.has_key?("to_payment")
      payment
      render :action => :payment
    elsif params.has_key?("to_passport")
      passport
      render :action => :passport
    elsif params.has_key?("to_question")
      question
      render :action => :question
    else
    end
  end
 
end
