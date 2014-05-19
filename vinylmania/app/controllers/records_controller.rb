class RecordsController < ApplicationController

  layout false

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new({:artist => "Artist"})
  end

  def create
    #strong params whitelisting ===> private down below
    @record = Record.new(subject_params)
    # saving the record....
    if @record.save
      # if save worked, redirect to index action
      redirect_to(:action => 'index')
    else
      # if saving fails, give the form back for user
      render('new')
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    # find an existing record...
    @record = Record.find(params[:id])
    # update the record
    # note the strong params whitelisting ===> private down below
    if @record.update_attributes(subject_params)
      # if update record worked, redirect to show page and note the id so the form can work
      redirect_to(:action => 'show', :id => @record.id)
    else
      # if updating fails, redisplay the form back to user
      render('edit')
    end
  end

  def delete
  end

  private
    # this is mapped from the def create method above
    # subject_params attributes that re allowed to be updated (for security reasons) and mass assigned
    def subject_params
      params.require(:record).permit(:artist, :releases, :lables, :searching)
    end
end
