def pet_shop_name(shop_name)
  return @pet_shop[:name]
end

def total_cash(sum)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(name, amount)
  amount_change_add = @pet_shop[:admin][:total_cash] + amount
  @pet_shop[:admin][:total_cash] = amount_change_add
  return amount_change_add
end

def pets_sold(sold_pets)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_pets)
  sold_pets_amount = @pet_shop[:admin][:pets_sold] + sold_pets
  @pet_shop[:admin][:pets_sold] = sold_pets_amount
  return sold_pets_amount
end

def stock_count(pet_shop)
  return @pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  total = []
  for pet in @pet_shop[:pets]
    if pet[:breed] == breed
      total << pet
    end
  end
  return total
end

def find_pet_by_name(pet_shop, name)
  for pet in @pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet_name in @pet_shop[:pets]
    if pet_name[:name] == name
      return pet_shop[:pets].delete(pet_name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return @pet_shop[:pets].push (new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push (new_pet)
  customer[:pets].length
end
