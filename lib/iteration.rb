def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  str = []
  for i in 0 .. src.length() - 1 do 
    str.push("I love " + src[i][0] + " and " + src[i][1] + " on my pizza")
  end
  str
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  num = []
  for i in 0 .. src.length() - 1 do 
    num.push(src[i][0] > src[i][1] ? src[i][0] : src[i][1])
  end
  num
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i = 0
  for i in 0 .. src.length() - 1 do 
    if (src[i][0] == 0 && src[i][1] == 0)
       i += src[i][0] + src[i][1]
    end
  end
end
