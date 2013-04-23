gold = silver = rest = 'unkown'

awardMedals = (first, second, others...) ->
	gold = first
	silver = second
	rest = others

awardMedals "A", "B", 'c', 

#console.log gold, silver, rest

contenders = [
  "Michael Phelps"
  "Liu Xiang"
  "Yao Ming"
  "Allyson Felix"
  "Shawn Johnson"
  "Roman Sebrle"
  "Guo Jingjing"
  "Tyson Gay"
  "Asafa Powell"
  "Usain Bolt"
]

awardMedals contenders...

console.log "Gold: " + gold
console.log "Silver: #{silver}"
console.log "The Field: #{rest}"
