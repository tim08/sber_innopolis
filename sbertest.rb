name_to_number = {
  'zero' => 0,
  'one'=> 1,
  'two'=> 2,
  'three'=> 3,
  'four'=> 4,
  'five'=> 5,
  'six'=> 6,
  'seven'=> 7,
  'eight'=> 8,
  'nine'=> 9
}

name_to_mathematic = {
    'plus' => '+',
    'minus' => '-',
    'times' => '*',
    'divided_by' => '/',
}


name_to_mathematic.each do |key, value|
  define_method key do |arg|
    "#{value}#{arg}"
  end
end
name_to_number.each do |key, value|
  define_method key do |arg=nil|
    number = value
    if arg.nil?
      number
    else
      p eval("#{number}#{arg}")
    end
  end
end
seven(times(five)) # получится 35
four(plus(nine)) # получится 13
eight(minus(three)) # получится 5
six(divided_by(two)) # получится 3


# seven(times(five)) # получится 35
# four(plus(nine)) # получится 13
# eight(minus(three)) # получится 5
# six(divided_by(two)) # получится 3
# Требования=>
#     1) Должны поддерживаться все цифры от 0 до 9.
#     2) Должны поддерживаться стандартные математические операции=> plus, minus, times, dividedBy
# 3) Деление должно быть целочисленным - eight(divided_by(three)) должно вернуть 2, а не 2.66666.