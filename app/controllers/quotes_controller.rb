class QuotesController < ApplicationController

  def index
    @quotes = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end

  # Let's examine the code. We're passing a simple JSON object into an instance variable. (The quote is from Mark Twain.) Then we call a custom json_response method on the instance variable. We could pass our quotation directly into our json_response method, but we'll be using instance variables soon anyway.

  private
  def json_response(object)
    render json: object, status: :ok
  end

  # Now let's take a look at our json_response method. render is a Rails method that takes :json as an option. (We've used render in our vanilla Rails apps to render html.) It will automatically call to_json on the object that it's passed in. Our object is already JSON, but in future lessons we'll be rendering database objects as JSON instead.
end
