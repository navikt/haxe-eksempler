
### react-parcel-nav

Haxe+React+Node+Parcel eksempel som drar inn NAV-frontent-komponent fra NAV npm-modul

#### Bygg + Kjør:

Forutsatt at Haxe, Node/NPM og Yarn allerede er installert:

Sørg for at haxe-wrapper for React er installert (https://github.com/massiveinteractive/haxe-react):
```sh
haxelib install react
```

Last ned NPM-avhengigheter:
```sh
npm install
```

Kompiler haxe-koden til www/index.js:
```sh
haxe build.hxml
```

Start parcel dev-server:
```sh
yarn parcel www/index.html
```

Når haxe-koden er endret kjør ```haxe build.hxml``` (eller trykk Cmd-Shift-B i VSCODE) for regenerere www/index.js.
Parcel skal da plukke opp endringene.




