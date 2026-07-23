# nom

Der Anfang eines Idle-Clickers in LÖVE. Man sammelt Futter, die Noms produzieren es, mehr Noms bedeuten mehr Futter pro Sekunde.

## Stand

Weit ist das nicht gekommen. Es gibt einen Ticker, der einmal pro Sekunde Futter gutschreibt, den Zählerstand oben links und einen Button "Buy a nom", der noch nichts kauft. Ein Klick auf den Button löst also nichts aus.

## Aufbau

Interessanter als das Spiel selbst ist das kleine UI-Toolkit unter `lib/UI`: `widget.lua` als Basisklasse mit Position und Größe, `button.lua` mit Text und `onPress`, und `interface.lua` als Container, der die Widgets zeichnet und Maus- sowie Tastatureingaben verteilt. Für die Klassen benutze ich middleclass, das als Submodul unter `lib/middleclass` hängt.

## Starten

Mit `--recursive` klonen oder `git submodule update --init` nachschieben, danach `love .` im Projektordner.
