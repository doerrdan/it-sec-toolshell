# Technischer <span class="accent">Ablauf</span>

<h2><span class="pill-tag">Persistenz</span>Wie der gestohlene MachineKey dauerhaften Zugriff ermöglicht</h2>

<div class="compare">

<div class="lane">
<h3><span class="dot"></span><span class="label">Normaler Ablauf</span></h3>
<div class="step"><div class="pill">1</div>Browser sendet ViewState</div>
<div class="step"><div class="pill">2</div>Server prüft Signatur</div>
<div class="step"><div class="pill">3</div>Gültig → sicher ausgeführt</div>
</div>

<div class="lane bad">
<h3><span class="dot"></span><span class="label">Nach initialem RCE (Schritt 5)</span></h3>
<div class="step"><div class="pill">1</div>MachineKey via RCE gestohlen</div>
<div class="step"><div class="pill">2</div>Gefälschter, signierter ViewState erstellt</div>
<div class="step"><div class="pill">3</div>Signatur vom Server als GÜLTIG erkannt</div>
<div class="step"><div class="pill">4</div>Schadcode ausgeführt – auch nach Patching</div>
</div>

</div>

<!--
Diese Folie zeigt, was nach der initialen Kompromittierung passiert – also nach Kill Chain Schritt 5,
wo der MachineKey gestohlen wurde.

Im normalen Ablauf: Der Browser sendet einen ViewState (serialisierter Zustand der Seite) an den Server.
Der Server prüft die kryptografische Signatur mit dem MachineKey und führt die Anfrage nur aus, wenn sie gültig ist.

Im Angriffs-Ablauf: Der Angreifer kennt jetzt den MachineKey.
Er kann damit beliebige ViewStates erstellen und korrekt signieren.
Der Server kann nicht unterscheiden, ob der ViewState vom Browser oder vom Angreifer stammt –
die Signatur ist korrekt, also wird der Code ausgeführt.

Der entscheidende Punkt: Das funktioniert auch nach einem Patch.
Solange der MachineKey nicht rotiert wird, hat der Angreifer persistenten Zugriff.
Deshalb ist alleiniges Patchen nicht ausreichend – der Key muss zwingend ausgetauscht werden.
-->
