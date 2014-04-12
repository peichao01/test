import scala.collection.mutable.Set
import scala.collection.immutable.HashSet

val movieSet = Set("Hitch","Poltergeist")
movieSet += "Shrek"
movieSet.+=("Shrek")
movieSet.+=("Shrek2")
println(movieSet)

val hashSet = HashSet("Tomatoes", "Chillies")
println(hashSet + "Coriander")
