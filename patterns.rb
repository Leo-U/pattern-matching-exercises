def swap_case(string)
  result = ""
  string.each_char do |char|
    result += case char
    in /[a-z]/
      char.upcase
    in /[A-Z]/
      char.downcase
    else char
    end
  end
  result
end

# /\A(.)(.*)(.)\z/


def swap_first_last(string)
  result = string.dup
  case result
  in /\A(.)(.*)(.)\z/
    result = "#{$3}#{$2}#{$1}"
  end
  puts result
end

# # swap_first_last("swap first and last characterz")


def replace_all_but_first(string)
  result = ''
  first_char = string[/\A(.)/]
  string.each_char do |char|
    result = string[0] if result.length == 0
    result += case char
      when first_char
        '*'
      else
        char
    end
  end
  puts result
end

# # replace_all_but_first("abbza")

def replace_vowels(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /[AEIOUaeiou]/
        '*'
      else 
        char
    end
  end
  result
end

# puts replace_vowels('aEuIztav')


def replace_non_vowels(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /[^AEIOUaeiou]/
        '*'
      else 
        char
    end
  end
  result
end

# puts replace_non_vowels('aEuIztav')


def replace_non_lowercase(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /[^a-z]/
        '*'
      else
        char
      end
  end
  result
end

#puts replace_non_lowercase("Hello 123 World")

def replace_non_uppercase(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /[^A-Z]/
        '*'
      else
        char
      end
  end
  result
end

# puts replace_non_uppercase("Hello 123 World")

def replace_digits(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /\d/
        '*'
      else
        char
      end
  end
  result
end

# puts replace_digits("Hello 123 World")


def replace_non_alphanumeric(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /[^a-zA-Z0-9]/
        '*'
      else
        char
      end
  end
  result
end

# puts replace_non_alphanumeric("Hello\n123\nWorld!")

def replace_non_whitespace(string)
  result = ''
  string.each_char do |char|
    result += case char
      in /\S/
        '*'
      else
        char
      end
    end
    result
end

# puts replace_non_whitespace("Hello 123 World!")
# puts replace_non_whitespace("Hello\n123\nWorld!")
# puts replace_non_whitespace("Hello 123\tWorld!")

def classify_number(integer)
  case integer.to_s
  in /^[1-9]\d*$/
    puts "#{integer} is a positive number."
  in /^-\d+$/
    puts "#{integer} is a negative number."
  in '0'
    puts "#{integer} is zero."

  end
end

# classify_number(555)
# classify_number(-952)
# classify_number(0)

def determine_case(string)
  case string
  in /^[A-Z]+$/ 
    puts "The string is all uppercase."
  in /^[a-z]+$/
    puts "The string is all lowercase."
  in /^[a-zA-Z]+$/
    puts "The string is a mix of uppercase and lowercase characters."
  end
end

# determine_case("ABC")
# determine_case("abc")
# determine_case("AbC")

def determine_even_odd(integer)
  case integer.to_s
  in /^\d*[02468]$/
    puts "#{integer} is even."
  in /^\d*[13579]$/
    puts "#{integer} is odd."
  end
end

# determine_even_odd(3)
# determine_even_odd(4)

def check_palindrome(string)
  unspaced = string.gsub(/\s+/, "")
  reversed = unspaced.reverse

  case unspaced
  when reversed
    puts "'#{string}' is a palindrome."
  else
    puts "'#{string}' is not a palindrome."
  end
end

# check_palindrome("nurses run")
# check_palindrome("dad")
# check_palindrome("dogshit")

# Write a method extract_info that takes a nested data structure as an argument and extracts certain values from it.
# The data structure will consist of nested arrays and hashes, and may have the following form:
# Your method should return a new array of hashes, with only the name, age, and city values extracted from the original data structure.

# data = [
#   {
#     name: "Alice",
#     age: 25,
#     address: {
#       street: "123 Main St",
#       city: "Chicago",
#       state: "IL"
#     }
#   },
#   {
#     name: "Bob",
#     age: 32,
#     address: {
#       street: "456 Market St",
#       city: "New York",
#       state: "NY"
#     }
#   }
# ]


# def extract_info(data)
#   result = []
#   data.each do |element|
#     case element
#     in {name: name, age: age, address: {city: city}}
#       result << {name: name, age: age, city: city}
#     end
#   end
#   result
# end

# puts extract_info(data)






records = {
  Alice: {
    age: 25,
    salary: 45000,
    position: "developer"
  },
  Bob: {
    age: 32,
    salary: 50000,
    position: "manager"
  },
  Charlie: {
    age: 28,
    salary: 60000,
    position: "director"
  }
}

def find_employee(records, name)
  check_me = records[name]
  name = name.to_sym
  case name
  in check_me
    records[name]
  end
end

# puts find_employee(records, "Bob")



orders = [
  {
    customer: {
      name: "Alice",
      address: {
        street: "123 Main St",
        city: "Chicago",
        state: "IL"
      }
    },
    items: [
      {
        name: "Laptop",
        price: 999.99,
        quantity: 1
      },
      {
        name: "Mouse",
        price: 29.99,
        quantity: 2
      }
    ]
  },
  {
    customer: {
      name: "Bob",
      address: {
        street: "456 Market St",
        city: "New York",
        state: "NY"
      }
    },
    items: [
      {
        name: "Keyboard",
        price: 59.99,
        quantity: 1
      },
      {
        name: "Monitor",
        price: 199.99,
        quantity: 1
      }
    ]
  }
]

# def process_orders(orders)
#   total_revenue = 0
#   total_items_ordered = 0
#   orders.each do |order|
#     order[:items].each do |item|
#       total_revenue += item[:price] * item[:quantity]
#       total_items_ordered += item[:quantity]
#     end
#   end
#   "Total revenue: #{total_revenue}. Total items ordered: #{total_items_ordered}"
# end


# the corrected solution:

def process_orders(orders)
  total_revenue = 0
  total_items_ordered = 0
  orders.each do |order|
    case order
    in {items: items}
      items.each do |item|
        total_revenue += item[:price] * item[:quantity]
        total_items_ordered += item[:quantity]
      end
    end
  end
  { total_items: total_items_ordered, total_revenue: total_revenue }
end

# puts process_orders(orders)


# Imagine that you are working on a program to parse and validate user input in a command-line interface (CLI). The user can enter commands in the following formats:

# add NAME AGE: adds a user with the given name and age to the database.
# remove NAME: removes the user with the given name from the database.
# search NAME: searches for the user with the given name in the database and returns their age.
# Your task is to write a method parse_input that takes a string as input and returns a hash with the following structure:

# {
#   command: "add" | "remove" | "search",
#   name: String,
#   age: Integer (only for "add" commands)
# }
# To solve this exercise, you will need to use pattern matching to extract the command, name, and age from the input string.

def parse_input(string)
  output = {}
  array = string.split' '
  case array
  in ['add', name, age]
    output[:command] = 'add'
    output[:name] = name
    output[:age] = age
  in ['search', *] | ['remove', *] if array.length == 2
    output[:command] = array[0]
    output[:name] = array[1]
  else
    raise "Invalid input"
  end
  output
end

# puts parse_input('add joel 32')



# Given the data structure `data` below, write a case expression that will match the structure
# of the data hash and bind the following variables:

#   name should be bound to the value of the name key within the user hash
#   age should be bound to the value of the age key within the user hash
#   street should be bound to the value of the street key within the address hash
#   city should be bound to the value of the city key within the address hash
#   state should be bound to the value of the state key within the address hash


data = {
  user: {
    name: 'John',
    age: 30,
    address: {
      street: 'Main Street',
      city: 'New York',
      state: 'NY'
    }
  }
}



def match_structure(data)
  case data
    in user: {name:, age:, address: {street:, city:, state:}}
      puts "User: #{name}
      age: #{age}
      street: #{street}
      city: #{city}
      state: #{state}"
    else
      puts 'Unrecognized data structure'
    end
end

# match_structure(data)

data = {
  type: "car",
  make: "Toyota",
  model: "Corolla",
  year: 2020,
  features: ["Bluetooth", "Automatic transmission", "Rearview camera"]
}

def describe_vehicle(data)
  case data
  in type:, make:, model:, year:, features:
    puts "The #{type} is a #{year} #{make} #{model}, featuring #{features[0]}, #{features[1].downcase}, and a #{features[2].downcase}."
  else
    puts 'Unrecognized data structure.'
  end
end

# describe_vehicle(data)

# Create a program that takes a string as an input and uses pattern matching to determine if the string is a valid phone number. The phone number should match the following format: (XXX) XXX-XXXX, where X is a digit from 0-9. If the phone number is valid, the program should return "valid phone number", otherwise it should return "invalid phone number".

# Example:

# Input: "(123) 456-7890"
# Output: "valid phone number"

# Input: "123-456-7890"
# Output: "invalid phone number"

phone_num_str = '(404) 988-2689'

# case phone_num_str
# in /\(\d{3}\) \d{3}-\d{4}/
#   puts "It's valid!"
# else 
#   puts "It's a piece of shit."
# end


# Write a method extract_info that takes a nested data structure as an argument and extracts certain values from it.
# The data structure will consist of nested arrays and hashes, and may have the following form:
# Your method should return a new array of hashes, with only the name, age, and city values extracted from the original data structure.


extract_info(data)