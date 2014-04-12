import org.apache.commons.lang.WordUtils

class Greeter extends Greet {
	Greeter(who) { name = WordUtils.capitalize(who) }
}

new Greeter('world').salute()
