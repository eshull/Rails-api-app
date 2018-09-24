class QuotesController < ApplicationController

     # We don't need new or edit routes because we have no views.

     # The routes we have are very similar to those in a vanilla Rails application. We still have strong parameters and we still need to find an individual quote through a URL parameter before we show, update or delete it.

  def index
    @quotes = Quote.all
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create(quote_params)
    json_response(@quote)
  end
  # However, instead of using the .new and .save methods in our create route, we use create. In a future lesson, we'll change this to a .create! bang method instead. The bang method will throw exceptions if needed, which is important if something goes wrong with an API call. We don't have a way to handle exceptions yet, but we'll deal with that soon.

  def update
    @quote = Quote.find(params[:id])
    @quote.update(quote_params)
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def quote_params
    params.permit(:author, :content)
  end
end
# Go ahead and test some API calls using Postman. Here's the routing you'll use:
#
# GET http://localhost:3000/quotes/:id will show an individual quotation by :id.
#
# POST http://localhost:3000/quotes will post a new quotation. You can add the author and content by clicking on "Body" in Postman just below the URL and passing in key-value pairs.

# PUT http://localhost:3000/quotes/:id will update a quotation. Just as with the POST call, you'll pass in the parameters you want to update in the body by using key-value pairs.
#
# DELETE http://localhost:3000/quotes/:id will delete a quotation with the corresponding :id.

# # You can confirm that your POST, PUT and DELETE methods are working by checking the corresponding records in the Rails console. Note that you'll get a 404 - Not Found error if you try to retrieve an :id that doesn't exist.
#
# Great! We now have working API calls that allow users to to access and change records in our database.
#
