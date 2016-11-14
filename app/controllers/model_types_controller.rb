class ModelTypesController < ApplicationController
  skip_before_action  :verify_authenticity_token
  def index
    models = Model.find_by!(model_slug: params[:model_slug]).to_json(:include => {:model_types => {:only => [:name], :methods => [:total_price]}}, :only => [:name])
    render json: {models: JSON.parse(models)}
  end

  def create
    model = Model.find_by!(model_slug: params[:model_slug])
    @model_type = model.model_types.new(model_type_params)
    if @model_type.save
      model_type = @model_type.as_json(:only => [:name, :base_price], :methods => [:total_price], :base_price => params[:base_price])
      render json: {model_type: model_type}
    else
      render json: {errors: @model_type.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
  def model_type_params
    mtp = params.permit(:base_price, :model_type_slug, :model_type_code)
    mtp.merge(name: mtp[:model_type_slug])
  end
end
