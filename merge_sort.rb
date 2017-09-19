

def merge_sort(input)
	
	n = input.size
	y = input.size/2
	
	if n < 2
		return input
	else	
		left = input[0...y] #these two lines split the array
		right = input[y..-1]
		
		merge_sort(left) 
		merge_sort(right)		

		merge(left,right, input)
	end 
	input
end	




def merge(left,right,a)
		a_pointer = 0 
		a_end = a.size - 1
		left_pointer = 0
		left_end = left.size - 1
		right_pointer = 0
		right_end = right.size - 1

			while left_pointer <= left_end && right_pointer <= right_end
				if left[left_pointer] < right[right_pointer]
					a[a_pointer] = left[left_pointer]
					left_pointer += 1
				else
					a[a_pointer] = right[right_pointer]
					right_pointer += 1
				end
					a_pointer +=1	
			end

			if left_pointer == left_end + 1
				a[a_pointer..a_end] = right[right_pointer..right_end]		
			else
				a[a_pointer..a_end] = left[left_pointer..left_end]
			end	
		
end		


puts merge_sort([7,9,1,4,8])	




