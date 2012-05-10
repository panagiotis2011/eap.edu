class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:index, :all, :show, :about]
  before_filter :count_questions
  before_filter :mailer_set_url_options

  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end

  def about
  end

  def all
    @questions = Question.where(:state => ['3', '4'])

    respond_to do |format|
      format.html { render 'index' }                  # uses the same view as the default index
      format.xml  { render :xml => @questions }
    end
  end

  protected
    def count_questions
      @num_all = Question.where(:state => ['3', '4']).count.to_s
      @num_featured = Question.where(:state => '4').count.to_s
    end
end
