class RecordsController < ApplicationController
require "discogs"

  def index
    @records = Record.all

    artist_params = params[:record][:artist].to_s
        wrapper = Discogs::Wrapper.new("Vinylmania")
    artist = wrapper.get_artist(artist_params)
    @artist_name = artist.name
    @artist_image = artist.images[2].uri150

  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    # @album = Album.new
    @record = Record.new({:artist => "Artist"})
  end

  def create
    #strong params whitelisting ===> private down below
    @record = Record.new(record_params)
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
    #finds the record by id number in db
    @record = Record.find(params[:id])
  end

  def update
    # find an existing record in db...
    @record = Record.find(params[:id])
    # update the record
    # note the strong params whitelisting ===> private down below
    if @record.update_attributes(record_params)
      # if update record worked, redirect to show page and note the id so the form can work
      redirect_to(:action => 'show', :id => @record.id)
    else
      # if updating fails, redisplay the form back to user
      render('edit')
    end
  end

  def delete
     #finds the record by id number in db to delete
     @record = Record.find(params[:id])
  end

    def destroy
     #finds the record by id number in db to delete
     record = Record.find(params[:id])
     record.destroy
     redirect_to(:action => 'index')
  end

  private
    # this is mapped from the def create method above
    # subject_params attributes that are allowed to be updated (for security reasons) and mass assigned
    def record_params
      params.require(:record).permit(:artist, :releases, :lables, :searching)
    end
end
