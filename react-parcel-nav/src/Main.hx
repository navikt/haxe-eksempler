import js.Browser;
import js.html.DivElement;
import js.Lib;
import react.React;
import react.ReactDOM;
import react.ReactMacro.jsx;
import react.ReactComponent;
import react.ReactMouseEvent;

import komponenter.MinKomponent;
import komponenter.NavKomp;

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
				<div key="1">
					<MinKomponent key="minkomp"/>

					<div className="heisannDiv">Heisann og Hoppsann</div>
					<Hovedknapp onClick=${function(e:ReactMouseEvent) {
						Browser.window.alert("Du trykket på hovedknappen!");
					}}>Dette er en Hovedknapp</Hovedknapp>
					${lagNoenElementer()}
				</div>
			'), root);
	}

	static function lagNoenElementer() : Array<ReactElement> {
		final fare1 = React.createElement(Fareknapp, { 
			key: "f1",
			spinner: false,
			onClick: function(e:ReactMouseEvent) {
				Browser.window.alert("Du trykket på fare1-knappen!");
			}
		}, "TRALALAL");
		final fare2 = jsx('
			<Fareknapp spinner=${true} key="f2" onClick=${function(e:ReactMouseEvent) {
				Browser.window.alert("Du trykket på fare2-knappen!");
			}}>FARE</Fareknapp>
		');
		return [fare1, fare2];
	}
}
