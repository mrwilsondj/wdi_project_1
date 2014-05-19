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

  def edit
  end

  def delete
  end
end
