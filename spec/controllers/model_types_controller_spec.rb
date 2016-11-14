require 'rails_helper'

describe ModelTypesController, type: :controller do
  it "routes models/:model_slug/model_types", :type => :routing do
    expect(get("models/serie_1/model_types")).to route_to(:controller => "model_types", :action => "index", :model_slug => "serie_1")
  end

  it "routes models/:model_slug/model_types_price/:model_type_slug", :type => :routing do
    expect(post("models/serie_3/model_types_price/330i")).to route_to(:controller => "model_types", :action => "create", :model_slug => "serie_3", :model_type_slug => "330i")
  end

end
