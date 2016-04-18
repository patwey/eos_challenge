class Api::V1::ResultsController < ApplicationController
  respond_to :json

  def create
    lengths = User.unique_lengths_of_names_including_str(params[:str])
    respond_with Result.find_or_create_from_name_lengths(lengths)
  end
end
