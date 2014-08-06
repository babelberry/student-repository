#let's put all students into an array
def input_students
	@students = []
	more_student = "yes"
	until more_student == "no"
		puts "Please enter the name of the student you want to add"
		name = gets.chomp
		puts "please input his or her age"
		age = gets.chomp
		puts "please input his or her country of origin"
		country = gets.chomp
		puts "finally, his or her hobby"
		hobby = gets.chomp
		add_student(name,age,country, hobby) 
		puts "Do you want to enter another student? yes or no"
		more_student = gets.chomp
	end
	@students
end

def add_student(name, age, country, hobby)
		@students << {:name => name, :cohort => :august, :age => age, :country => country, :hobby => hobby}
		puts "Now we have #{@students.length} students\n"
end

def print_header
	print "The students of my cohort at Makers Academy\n-------------------\n"
end

def print_students(students)
	n = students.length
	counter = 0
	while counter < n
		student = students[counter]
		print "#{counter +1}. #{student[:name]} | #{student[:cohort]} cohort | #{student[:age]} years old | from #{student[:country]} | hobby : #{student[:hobby]}\n" 
		counter += 1
	end 
end
	
def print_footer (names)
	print "Overall we have #{names.length} great students\n"
end
#nothing happens until we call the methods
students = input_students
print_header 
print_students(students)
print_footer(students)