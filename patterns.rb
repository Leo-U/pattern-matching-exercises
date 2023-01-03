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


