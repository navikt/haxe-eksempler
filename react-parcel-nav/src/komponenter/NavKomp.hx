package komponenter;

import react.ReactComponent;

/**
 * "extern class"-deklarasjon for å mappe til ekstern ikke-Haxe kode.
 * jsRequire-annotasjonen sier i tillegg at det må kjøres et require-kall for laste denne klassen.
 * Dette ender opp i Javascript som "var Hovedknapp = require("nav-frontend-knapper").Hovedknapp;"
 * Skal Haxe-koden benytte andre metoder/properties enn de som arves fra ReactComponent så må disse deklareres.
 */
 @:jsRequire("nav-frontend-knapper", "Hovedknapp")
 extern class Hovedknapp extends ReactComponent {}
 @:jsRequire("nav-frontend-knapper", "Fareknapp")
 extern class Fareknapp extends ReactComponent {}