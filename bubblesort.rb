# Program to implement Bubble Sort

class BubbleSort
	
	def bubble_sort(a)
    i = 0
    while i<a.size
      j = a.size - 1
        while (i < j)
          if a[j] < a[j - 1]
            a[j], a[j-1] = a[j-1], a[j]
          end
        j-=1
        end
      i+=1
    end
    return a
  end

  def get_num
  	puts "Enter 10 numbers in any order"
    10.times do |x|
      a[x] = gets.chomp.to_i
      a.bubble_sort(a)
    end
    return a
  end
  
  def show_output(a)
  	a.length.times do
    	puts a
  end	
end
