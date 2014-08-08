#let's put all students into an array
MONTHS = %w(january february march april may june july august september october november december)

def interactive_menu
	loop do 
		puts"1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		selection = gets.chomp
		case selection
		when "1"
			input_students
		when "2"
			print_students
		when "9"
			Exit
		else "I don't know what you mean, please try again"
	end
end

def input_students
	@students = []
	more_student = "yes"

	until more_student == "no"
		puts "Please enter the name of the student you want to add"
		name = get_information
			name = "N/A" if name == ""
		puts "Please enter his or her cohort month"
		cohort = get_cohort
			cohort = "N/A" if cohort == ""
		puts "please input his or her age"
		age = get_information
			age = "N/A" if age == ""
		puts "please input his or her country of origin"
		country = get_information
			country = "N/A" if country == ""
		puts "finally, his or her hobby"
		hobby = get_information
			hobby = "N/A" if hobby == ""
		add_student(name,cohort, age,country, hobby) 
		puts "Do you want to enter another student? yes or no"
		more_student = gets.chomp
	end
	@students
end

def get_cohort
	info_given = gets.chomp
	until MONTHS.include? info_given.downcase
		puts "Sorry cannot find that month - please enter it again"
		info_given = gets.chomp
	end
	info_given
end

def get_information
	entered_value = gets.chomp
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
	students = students.sort_by {|student| student[:cohort]}
	while counter < n
		student = students[counter]
		puts "#{counter +1} #{student[:name]} | #{student[:cohort]} cohort | #{student[:age]} years old | from #{student[:country]} | hobby : #{student[:hobby]}".center(120)
		counter += 1
	end 
end
	
def print_footer (names)
	puts "Overall we have #{names.length} great student#{'s' if (names.length) > 1}" 
end



#nothing happens until we call the methods
students = input_students
print_header 
print_students(students)
print_footer(students)