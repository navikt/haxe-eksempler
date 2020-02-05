import js.Browser;
import js.html.DivElement;
import js.Lib;
import react.ReactDOM;
import react.ReactMacro.jsx;
import react.ReactComponent;
import react.ReactMouseEvent;

/**
 * "extern class"-deklarasjon for å mappe til ekstern ikke-Haxe kode.
 * jsRequire-annotasjonen sier i tillegg at det må kjøres et require-kall for laste denne klassen.
 * Dette ender opp i Javascript som "var Hovedknapp = require("nav-frontend-knapper").Hovedknapp;"
 * Skal Haxe-koden benytte andre metoder/properties enn de som arves fra ReactComponent så må disse deklareres.
 * Typisk vil slike extern-deklarasjoner ikke ligge her men i et lite felles-bibliotek.
 */
@:jsRequire("nav-frontend-knapper", "Hovedknapp")
extern class Hovedknapp extends ReactComponent {}

class Main {
	public static function main() {
		// Kjør require på en less-fil (Krever "less" npm-dependency)
		// Merk at denne ligger under ./www/ siden det også er der den kompilerte index.js er satt til å havne (angitt i build.hxml)
		Lib.require("./main.less");

		var root = createRoot();
		render(root);
	}
 
	static function createRoot() {
		var root = Browser.document.createDivElement();
		Browser.document.body.appendChild(root);
		return root;
	}

	static function render(root:DivElement) {
		var app = ReactDOM.render(jsx('
				<div>
					<div className="heisannDiv">Heisann og Hoppsann</div>
					<Hovedknapp onClick=${function(e:ReactMouseEvent) {
						Browser.window.alert("Du trykket på hovedknappen!");
					}}>Dette er en Hovedknapp</Hovedknapp>
				</div>
			'), root);
	}
}
