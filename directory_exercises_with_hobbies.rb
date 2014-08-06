#let's put all students into an array
def input_students
	@students = []
	more_student = "yes"

	until more_student == "no"
		puts "Please enter the name of the student you want to add"
		name = gets.chomp
			name = "N/A" if name == ""
		puts "Please enter his or her cohort month"
		cohort = gets.chomp
			cohort = "N/A" if cohort == ""
		puts "please input his or her age"
		age = gets.chomp
			age = "N/A" if age == ""
		puts "please input his or her country of origin"
		country = gets.chomp
			country = "N/A" if country == ""
		puts "finally, his or her hobby"
		hobby = gets.chomp
			hobby = "N/A" if hobby == ""
		add_student(name,cohort, age,country, hobby) 
		puts "Do you want to enter another student? yes or no"
		more_student = gets.chomp
	end
	@students
end

def add_student(name, cohort, age, country, hobby)
		@students << {:name => name, :cohort => cohort, :age => age, :country => country, :hobby => hobby}
		puts "Now we have #{@students.length} students"
end

def print_header
	puts "The students of my cohort at Makers Academy".center(120)
	puts "-------------------".center(120)
end

def print_students(students)
	n = students.length
	counter = 0
	while counter < n
		student = students[counter]
		puts "#{counter +1} #{student[:name]} | #{student[:cohort]} cohort | #{student[:age]} years old | from #{student[:country]} | hobby : #{student[:hobby]}".center(120)
		counter += 1
	end 
end
	
def print_footer (names)
	puts "Overall we have #{names.length} great students"
end
#nothing happens until we call the methods
students = input_students
print_header 
print_students(students)
print_footer(students)