class CollectorController < ApplicationController

  # # before filter :name_of_some_method
  # before_action :authenticate_with_basic_auth

  def index
    # show me all the collectors
    @collectors = Collectors.all
    # render :index
  end

  def show
    # show me one collector
    @collector = Collector.find(params[:id])
    # render json: @collector
  end

  def new
    @collector = Collector.new
  end

  def create
    collector_hash = params[:collector]
    if collector_hash[:password] == collector_hash[:password_confirmation]
      collector = Collector.new
      collector.password = collector_hash[:password]
      collector.name = collector_hash[:name]
      collector.email = collector_hash[:email]
      collector.save

      if collector.valid?
        # log the chef in when they register
        @current_user = collector
        redirect_to "/collector/login"
      else
        render text: "Email is already taken!"
      end
    else
      render text: "Passwords Did Not Match!"
    end
    # render json: params
  end

  # not a restful route, really...
  def login
        # show LOGIN form

  end

  def process_login
        # process login form

    email = params[:email]
    password = params[:password]

    @current_user = Collector.authenticated?(email, password)

    if @current_user
      redirect_to collector_path
    else
      render text: "Login Failed! Invalid email or password!"
    end

  end

end
