# code maker

def ask_length
  length = 0
  until length.between?(6, 15)
    puts 'What should be the length(6-15) of your code?'
    length = gets.chomp.to_i
  end
  length
end

def ask_codetype
  codetype = 0
  until codetype.between?(1, 3)
    puts 'Enter a number(1-3) to choose any option listed below?'
    puts '1- Alphabets    2- Numeric    3- Alphanumeric'
    codetype = gets.chomp.to_i
  end
  codetype
end

def type_1(codelength)
  code = ''
  (1..codelength).each do |_ele|
    temp = ('a'..'z').to_a.sample
    code += temp.to_s
  end
  puts code
end

def type_2(codelength)
  code = ''
  (1..codelength).each do |_ele|
    temp = rand(10)
    code += temp.to_s
  end
  puts code
end

def type_3(codelength)
  code = ''
  (1..codelength).each do |_ele|
    temp = ('!'..'z').to_a.sample
    code += temp.to_s
  end
  puts code
end

def run
  codelength = ask_length
  codetype = ask_codetype
  type_1(codelength) if codetype == 1
  type_2(codelength) if codetype == 2
  type_3(codelength) if codetype == 3
end

run
