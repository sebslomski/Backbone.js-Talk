- Current Status (3)
- What you actually need
- But: Your problem is not unique
- Backbone.js to the rescue
- Backbone.js in a nutshell
  - abstrahiert Funktionalität
  - separiert die einzelnen Bereiche
  - entkoppelt den frontend code

- Backbone.js Overview
  - Bietet MVC
  - Einfache Integration mit REST APIs
  - eventbasiert
  - nur 4.6kb groß
  - zwei hard dependencies
  - super Doku

- Wer hats erfunden?: Documentcloud (Jeremy Ashkenas)
  - CoffeeScript
  - Underscore.js (JS Utils lib)
  - Jammit (Ruby Lib)
  - etc.

- Aufbau: Model Collection View Router

- Models Info
  - Models kümmern sich um Synchronisierung mit Server
  - Haben eigene Events: change, destroy, error (validation)

  - Funktionen
    - Model vom Server laden
    - Model auf dem Server speichern
    - Model auf dem Server löschen
    - Model validieren

- Models Definition
  - Backbone.js ermöglicht objektorientiertes Programmieren mit "extends"
  - Backbone.Model als Basisklasse
  - url zur REST API auf dem Server
  - default-Werte

- Models verwenden
  - Neue Instance wie in JS üblich erzeugen
  - Model.Set um Attribute zu setzen -> Change Event
  - Mit model.save Model auf dem Server speichern

- Model vom Server laden
  - Neue Instance mit Initialisierungswerten erzeugen
  - mit model.fetch werden die Daten vom Server geholt

- Model auf dem Server löschen
  - model.destroy


// Übergang von Models -> Collection
// Weil eine Liste von Models schwer zu managen ist, gibt es Collecitons

- Collections
  - Liste von Models
  - die helfen, die Models zu organisieren
  - Haben eigene Events: add und remove von Models

  - Funktionen
    - Eine Liste von Models vom Server holen
    - Sortierung

- Collections definieren
  - Model für die Collection angeben
  - URL für die Rest API

- Collection verwenden
  - Neue Instance anlegen
  - Mit model.fetch eine Liste von Models vom Server holen
  - Um eine neues Model zur Collection hinzuzufügen -> colleciton.add -> event
  - model.remove zum entfernen eines Models von der Collection -> event


// Übergang: Damit ist die Kommunikation mit dem Server abgedeckt.
Nun zu den Views auf der Client Seite

- Views
  - Aufgabe des Views ist es, sich um DOM Änderungen zu kümmern
  - Jeder View ist einem DOM Element zugeordnet
  - Der View arbeitet nur innerhalb dieses Elements
  - Alle Events, die in diesem DOM Element abgefeuert werden, werden vom View
    verarbeitet

- Views Definition
  - Jeder View hat eine ID (die ID des DOM Elements, mit dem er verbunden ist)
  - Eine render Funktion, die den HTML Code erzeugt
  - Und das DOM Element (this.el) des Views mit der definierten ID mit dem HTML
    Code befüllt

- Views verwenden
  - neue Instance erzeugen
  - Die Render Funktion des Views aufrufen. Dadurch wird das DOM Element des Views
    mit dem HTML Code befüllt. Dieses Element ist aber noch nicht zum DOM hinzugefügt
    worden und daher noch nicht sichtbar
  - Deshalb muss das DOM Element, das man mit view.el erreicht, zum DOM hinzugefügt
    werden

- Views: Alles synchronisiert halten

- Views: Events
  - View zum Hinzufügen eines neuen Tweets: Render Funktion gibt die Input Felder
  - Backbone.js Klassen haben alle eine Initialize Funktion, die beim erstellen des
    Objekts aufgerufen wird. Und da erstellen wir nun ein neues Model, speichern das
    auf der Instanz und binden die Render Funktion zum Model: Immer wenn sich das Model
    nun ändert, wird der View neu gerendert.
  - Außerdem wird das Text Input Feld nun mit dem Text Attribut des Models initialisiert
  - Nun fügen wir events hinzu: Wird innerhalb des DOM-Elements des Views auf den
    Save-Button geklickt, wird die saveTweet Funktion ausgeführt
  - Die saveTweet Funktion setzt die Attribute des Models. Dadurch wird ein Change Event
    abgefeuert, wodurch die Render Funktion aufgerufen wird.
    Das Input Feld hat nun den vorher eingegebenen Wert.
    Und zuletzt wird das Model auf dem Server gespeichert.


- Routers
  - Kümmern sich um das Routen der URLs, zb. über Hash-Pfade in der URL
  - Oder mit HTML5 pushState

- Routers Definition
  - Routen werden definiert und
  - Einer Funktion zugeordnet
  - Zum Verwenden des Routers muss der Router nur instanziert werden

- Danke!
