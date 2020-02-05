package komponenter;

import react.ReactComponent;
import react.ReactMouseEvent;
import react.ReactMacro.jsx;
import komponenter.NavKomp;

class MinKomponent extends ReactComponentOfState<{tallet: Int, teksten: String}> {
	override function componentWillMount():Void {
		this.setState({
			tallet: 2,
			teksten: "staten"
		});		
	}
	override function render() : ReactElement{
		return jsx('
		<div>
			<div>State = ${this.state.tallet} ${this.state.teksten}</div>
			<Hovedknapp onClick=${function(e:ReactMouseEvent) {
				this.setState({
					tallet: state.tallet + 1,
					teksten: (state.tallet % 2 == 0) ? state.teksten.toUpperCase() : state.teksten.toLowerCase()
				});
			}}>KLIKK</Hovedknapp>
		</div>
		');
	}
}