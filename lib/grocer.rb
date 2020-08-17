def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find { |i| i[:item] == name }
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt = []
  cart.each do  |i|
    receipt_item_num = receipt.find_index { |j| j[:item] == i[:item]}
    if receipt_item_num
      receipt[receipt_item_num][:count] += 1
    else
      receipt[receipt.length] = i.merge(count: 1)
    end
  end
  receipt
end
