Vorlage (LaTeX)
===============

Voraussetzungen
---------------

Für die Verwendung der Vorlage werden eine installierte LaTeX-Distribution und ein Perl-Interpreter benötigt.

Unterstützt werden prinzipiell Windows und Linux basierte Betriebssysteme.
Getestet wurde die Vorlage mit Windows, Debian und Ubuntu.
Debian wird ab Version 7 und Ubuntu ab Version 13.04 unterstützt.
Vorherige Versionen von Debian und Ubuntu beinhalten noch nicht das notwendige Paket `biber` in den Paketquellen.

### Windows

Als LaTeX-Distribution kann MiKTeX verwendet werden.
Hierzu kann man den [Basic MiKTeX Installer](http://miktex.org/download) verwenden.
Bei der Installation wählt man für die Option `Install missing packages on-the-fly` den Wert `Yes`.

Als Perl-Interpreter kann ActivePerl verwendet werden.
Dieser kann [hier](http://www.activestate.com/activeperl/downloads) heruntergeladen werden.
Bei der Installation sollte die Option `Add Perl to the PATH environment variable` gesetzt bleiben.

### Debian (ab Version 7) / Ubuntu (ab 13.04)

Als LaTeX-Distribution kann TeX Live verwendet werden.
Unter Debian und Ubuntu kann die Paketverwaltung zur Installation der notwendigen Pakete verwendet werden.

Dazu in einer Konsole den folgenden Befehl ausführen:

    $ sudo apt-get install biber cm-super dos2unix recode texlive texlive-bibtex-extra texlive-lang-german texlive-latex-extra

Verwendung
----------

### Erstellung des Dokuments

Im Verzeichnis der Vorlage befindet sich sowohl für Windows als auch für Linux ein Build-Skript zur Erstellung des Dokuments.

Unter Windows hierzu die Datei `CreateDocument.bat` ausführen.

Unter Linux hierzu die Datei `CreateDocument.sh` ausführen:

    $ ./CreateDocument.sh

Dabei wird jeweils die Datei `Document.pdf` erstellt, die das Dokument beinhaltet.

### Datei- und Verzeichnisstruktur

Die folgende Übersicht stellt die Datei- und Verzeichnisstruktur der Vorlage dar:

 - `appendix/`: Für den Anhang relevante Dokumente.
    - `A_Literatur.tex`: Darstellung des Literaturverzeichnisses.
    - `B_Abbildungsverzeichnis.tex`: Darstellung des Abbildungsverzeichnisses.
    - `C_Tabellenverzeichnis.tex`: Darstellung des Tabellenverzeichnisses.
    - `D_Abkuerzungsverzeichnis.tex`: Darstellung des Abkürzungsverzeichnisses.
    - `E_Glossar.tex`: Darstellung des Glossars.
 - `assets/`: Ablage von Bildern und weiterer Dokumente.
    - `Logo.png`: Logo der Universität.
 - `chapters/`: Für die einzelnen Kapitel des Dokuments.
    - `01_Template.tex`: Beispielkapitel.
 - `parts/`: Für den Vorspann relevante Dokumente.
    - `01_Titelblatt.tex`: Darstellung des Titelblattes.
    - `02_Teilnehmer.tex`: Darstellung der Teilnehmerliste.
    - `03_Inhaltsverzeichnis.tex`: Darstellung des Inhaltsverzeichnisses.
 - `Abkuerzungen.tex`: Definition von Abkürzungen.
 - `Content.tex`: Zusammenfassung von TeX-Dateien.
 - `CreateDocument.bat`: Build-Skript für Windows.
 - `CreateDocument.sh`:  Build-Skript für Linux.
 - `Definitionen.tex`: Zusätzliche LaTeX-Definitionen.
 - `Document.tex`: Hauptdokument.
 - `FormatFiles.sh`: Skript zur Formatierung von Dateien.
 - `Glossar.tex`: Definition von Glossareinträgen.
 - `Literatur.bib`: Definition von Literatureinträgen.
 - `Optionen.tex`: Definition von Optionen.
 - `PrepareForIDE.bat`: Skript für Windows zur Erstellung der notwendigen Dateien für LaTeX-IDE's.
 - `PrepareForIDE.sh`: Skript für Linux zur Erstellung der notwendigen Dateien für LaTeX-IDE's.

### Anpassung von Optionen

In der Datei `Optionen.tex` können eine Vielzahl von Optionen angepasst werden.

### Hinzufügen von Inhalten

Zusätzliche Inhalte können als TeX-Dateien in den Verzeichnissen `appendix`, `chapters` und `parts` hinzugefügt werden.
Die TeX-Dateien in diesen Verzeichnissen werden automatisch eingebunden.
Die Reihenfolge der Einbindung erfolgt alphabetisch aufsteigend nach dem Dateinamen.

### Definition von Abkürzungen

Abkürzungen können in der Datei `Abkuerzungen.tex` hinzugefügt werden.
Dazu steht der Befehl `\addAcronymEntry` zur Verfügung.
Dieser hat den folgenden Aufbau:

    \addAcronymEntry{abbreviation:Schlüssel}{Die eigentliche Abkürzung.}{Beschreibung der Abkürzung.}

### Definition von Glossareinträgen

Glossareinträge können in der Datei `Glossar.tex` hinzugefügt werden.
Dazu steht der Befehl `\addGlossaryEntry` zur Verfügung.
Dieser hat den folgenden Aufbau:

    \addGlossaryEntry{glossary:Schlüssel}{
        name={Titel des Eintrages.},
        deSkription={Beschreibung des Eintrages.}
    }
