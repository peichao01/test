grade = (student) ->
	if student.excellentWork
		"A+"
	else if student.okayStuff
		if student.triedHard then "B" else "B-"
	else
		"C"

eldest = if 24>21 then "Liz" else "Ike"

students = [
	{name: "David", excellentWork: true}
	{name: "Holln", okayStuff: true}
	{name: "John", okayStuff: true, triedHard: true}
	{name: "Sanji"}
]

for student in students
	student.score = grade student
	console.log "#{student.name}'s score: #{student.score}"
#(student.score=grade(student),console.log "#{student.name}'s score: #{student.score}") for student in students
