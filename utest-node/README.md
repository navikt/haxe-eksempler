
### utest-node

Enkel Haxe unittesting med "utest" eksempel, med vscode oppsett for nodejs-debugging

#### Bygg + Kjør:

Forutsatt at Haxe, Node allerede er installert:

Installer nødvendige haxe-biblioteker:

```sh
haxelib install utest
haxelib install json2object
haxelib install hxnodejs
```

Forutsatt at "Haxe Extension Pack" for vscode allerede er installert (hvis ikke så installer først denne):

Installer Haxe Test Explorer plugin i VSCode (Shift-Cmd-X, søk "haxe test explorer" og installer)

Det skal nå dukke opp et Test-valg nedenfor Extensions-valget i venstremenyen i VSCode.
Her kan man Run'e eller Debug'e testene samt få en oversikt over resultatene.

Uavhengig av VSCode kan man eventuelt bygge og teste prosjektet på kommandolinja med h.h.v:
```haxe build.hxml``` og ```haxe test.hxml```.
Da må dog "test-adapter" som ellers blir installert sammen med VSCode-pluginen
enten fjernes fra test.hxml eller installeres manuelt (```haxelib install test-adapter```),
siden denne her benyttes for å generere rapporter i .unittest-katalogen.


NB: Selv om dette eksemplet viser oppsett for nodejs, så skal "utest" støtte alle Haxe-platformer.
Haxe Test Explorer for vscode (https://marketplace.visualstudio.com/items?itemName=vshaxe.haxe-test-adapter) støtter også flere andre testrammeverk enn "utest".

