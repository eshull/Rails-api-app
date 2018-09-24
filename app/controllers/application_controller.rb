class ApplicationController < ActionController::API
end


# Unlike the ApplicationController class in a standard Rails application, which inherits from ActionController::Base, our controllers now inherit from ActiveController::API.
#
# Why do Rails APIs inherit from API instead of Base? Controllers in a vanilla Rails application process data and render views. However, controllers in a Rails API application are primarily focused on processing data, not rendering views. Our controllers have different concerns so the code handling these concerns is different, too.

# In a Rails API, the controller processes data which is then exposed in the form of an API endpoint. An endpoint is an object (or objects) that our API provides to users - in other words, it's the interface that allows applications to communicate with each other.
# 
# Our endpoints will be URLs that use RESTful routing. We'll define these routes in config/routes.rb just as we do with a vanilla Rails application. For example, the endpoint /books/show/41 will provide information about a book object with an ID of 41. It's the exact same routing you've used to build out other Rails applications in the past.
