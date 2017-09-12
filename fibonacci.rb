def fibs(n)
	result = []
	if n == 0  
		result<<n
	elsif n == 1
		result<<0 <<1
				
		
	else
		result = [0,1]
		a = 0
		b = 1
		(n-1).times do 
			a += b
			result<<a
			a,b = b,a

			
		end

	end	
 puts result.inspect
 
end

def fibs_recur(n)   #simple solve using recursion

		return 0 if n == 0
		return 1 if n == 1
					
		fibs_recur(n-1) + fibs_recur(n-2)
		
end

def fibs_recur_list(n)
	list =  []
	for x in 0..n
		list<<fibs_recur(x)
		
	end
	list.inspect
end


#tests

fibs(0) =>
fibs(1)
fibs(2)
fibs(5)

puts fibs_recur(0)
puts fibs_recur(1)
puts fibs_recur(2)
puts fibs_recur(5)

puts fibs_recur_list(0)
puts fibs_recur_list(1)
puts fibs_recur_list(2)
puts fibs_recur_list(5)

#above tests returned

#[0]
#[0, 1]
#[0, 1, 1]
#[0, 1, 1, 2, 3, 5]
#0
#1
#1
#5
#[0]
#[0, 1]
#[0, 1, 1]
#[0, 1, 1, 2, 3, 5]
