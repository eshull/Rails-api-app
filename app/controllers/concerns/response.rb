module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
#
# A module is a way of encapsulating code so it's only available where it's needed. We'll need to include module_name in any files where we need to use the methods contained in the module.
#
# However, it won't work in our controllers yet because it hasn't been included. Remember, a module contains encapsulated code, which means it's only accessible to parts of an application where it's included.
