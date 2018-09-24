module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
#
# A module is a way of encapsulating code so it's only available where it's needed. We'll need to include module_name in any files where we need to use the methods contained in the module.
#
# However, it won't work in our controllers yet because it hasn't been included. Remember, a module contains encapsulated code, which means it's only accessible to parts of an application where it's included.


# Modules are a great place to put code that doesn't fit in a class. For instance, you might want to group related pieces of code that don't naturally fit into a class together.

# Encapsulation allows developers to keep different parts of their codebase separate. Modules limit encapsulated code to only where it's needed. This can help prevent conflicts in larger applications and limits scope to where it's necessary, which is always a good practice.

# Ruby doesn't allow multiple inheritance like some other languages. In other words, a class in Ruby can only inherit from one other class instead of inheriting from many classes. Modules provide a way around this with the concept of mixins, which means they can be "mixed in" to other classes. You can include as many modules as you want in a class; it's almost like having multiple inheritance after all. Mixins also allow us to provide reusable code to many different classes. After all, we might have methods that would be useful to multiple classes but don't necessarily belong in a parent class.
#
