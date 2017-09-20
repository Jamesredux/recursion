
def merge_sort(input)
	
	n = input.size
	y = input.size/2
	
	if n <= 1
		return input
	else			
		left = merge_sort(input[0...y])
		right = merge_sort(input[y..-1])
		merge(left,right)
	end 
	
end	


def merge(left,right)
	array = []
	until left.empty? || right.empty?
		if left.first <= right.first
			array<<left.shift
		else
			array<<right.shift
		end
	end
		array += left += right		
end


puts merge_sort([6,3,4,1,9,2,7,5,8]).inspect




