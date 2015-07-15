require 'pry'

# http://edx.raccoongang.com/courses/IT-People/RoR101/spring2015/courseware/b970871802734615acb83348a295f883/835bd3a65e484ed08b8ebd4cd2612490/
class RorTask1
  # Напишите программу, которая для заданного натурального числа num определяет
  # количество вхождений числа 3 в разложение заданного числа на простые сомножители.
  def how_many_threes(num)
    result = 0
    while num > 0 && num % 3 == 0
      num /= 3
      result += 1
    end
    result
  end

  # Дан текст. Определите максимальное из имеющихся в нем чисел.
  def max_number_in_text(text)
    text.scan(/\d+(?:[.]\d+|)/).map(&:to_f).max
  end

  # Дан целочисленный массив. Необходимо вывести вначале его элементы с четными
  # индексами, а затем - с нечетными.
  def even_odd_elements(arr)
    arr.partition.with_index { |obj, i| i.odd? }.flatten
  end

  # Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний
  # элемент. Первый и последний элементы массива не изменять.
  def even_elements_addition(arr)
    arr.map.with_index { |obj, i| ((1...arr.size - 1).include?(i) && obj.odd?) ? obj + arr[-1] : obj }
  end

  # Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел
  # из данного массива, расположенных между первыми двумя нулями.
  def sum_between_zeros(arr)
    first_index = arr.index(0) + 1
    second_index = arr[first_index..-1].index(0) + first_index - 1
    arr[first_index..second_index].inject(:+)
  end
end
