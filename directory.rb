#let's put all students into an array
students = [ 
"Javier Silverio", 
"Elliot Lewis", 
"Ben Tillett", 
"Vincent Koch", 
"Michelle Ballard", 
"Nick Roberts", 
"Tatiana Soukiassian", 
"Mervé Silk", 
"Albert Vallverdu", 
"Lovis Schultze", 
"Henry Stanley", 
"Spike Lindsey", 
"Ruth Earle", 
"Andy Gates", 
"Faisal Aydarus", 
"Ethel Ng", 
"Kevin Daniells", 
"Maya Driver", 
"Leopold Kwok", 
"James McNeil", 
"Jerome Pratt", 
"David Wickes", 
"Chris Oatley", 
"Marc Singh"]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------"
end
def print(names)
names.each do |name|
	puts name
	end
end
	
def print_footer(names)
	puts "Overall we have #{students.length} great students"
end
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)