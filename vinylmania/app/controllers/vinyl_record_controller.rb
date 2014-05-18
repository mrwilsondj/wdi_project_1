class VinylRecordController < ApplicationController

   # before filter :name_of_some_method
  before_action :authenticate_with_basic_auth

  def create

    VinylRecord.create(vinyl_record_attributes)

    # render json: Recipe.create(recipe_attributes)
    redirect_to "/collectors/#{collector_attributes[:collector_id]}"
  end

  def edit
    @vinyl_record = VinylRecord.find(params[:id])
    render partial: "vinyl_recordform", locals: { vinyl_record_local: @vinyl_record, collector_id: @vinyl_record.collector.id }
  end

  def update
    vinyl_record = VinylRecord.find(params[:id])

    vinyl_record.update_attributes(vinyl_record_attributes)

    redirect_to "/collectors/#{vinyl_record.cookbook.id}"
    # render json: params

  end

  def show
    # shows one recipe
    @vinyl_record = VinylRecord.find(params[:id])
  end

  private

  def recipe_attributes
    params.require(:vinyl_record).permit(:artist, :release, :collector_id)
  end

end
