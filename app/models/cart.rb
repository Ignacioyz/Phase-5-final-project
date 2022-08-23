class Cart < ApplicationRecord
has_many :paintings

# def has_cart
#     if Cart.find_by(user_id: session[:user_id])
# end 

end
