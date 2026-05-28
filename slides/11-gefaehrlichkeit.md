# Warum besonders <span class="accent">gefährlich?</span>

<h2><span class="pill-tag">Risiko</span>Vier entscheidende Risikofaktoren</h2>

<div class="grid-2">

<div class="tile">
<div class="head"><h3>Kein Login nötig</h3></div>
</div>

<div class="tile">
<div class="head"><h3>Schwer zu erkennen</h3></div>
</div>

<div class="tile pink">
<div class="head"><h3>Kombination mehrerer Lücken</h3></div>
</div>

<div class="tile purple">
<div class="head"><h3>Dauerhafter Verbleib</h3></div>
</div>

</div>

<!--
Warum ist dieser Angriff so besonders gefährlich? Vier Faktoren zusammen:

1. Kein Login nötig: Der Angriff erfordert keine gestohlenen Zugangsdaten, kein Phishing vorab.
   Jeder mit Internetzugang und Kenntnis der Lücke kann angreifen – das ermöglicht automatisiertes Massenscanning.

2. Schwer zu erkennen: Die manipulierten ViewState-Anfragen sehen für Standard-Logging-Tools aus wie
   normale legitime Anfragen. Kaum Spuren im Protokoll.

3. Kombination mehrerer Lücken: Der Angriff verbindet Deserialisierung und ViewState-Manipulation.
   Einzelne Schutzmaßnahmen reichen nicht – man muss beide Vektoren gleichzeitig absichern.

4. Dauerhafter Verbleib: Durch den gestohlenen MachineKey können Angreifer auch nach einem Patch
   persistenten Zugriff behalten. Ohne Key-Rotation nützt der Patch alleine nichts.
   Im Schnitt bleiben APT-Angreifer über 200 Tage unentdeckt im System.
-->
