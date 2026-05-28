# Technischer <span class="accent">Ablauf</span>

<h2><span class="pill-tag">Vergleich</span>Wie die Schwachstelle funktioniert</h2>

<div class="compare">

<div class="lane">
<h3><span class="dot"></span><span class="label">Normaler Ablauf</span></h3>
<div class="step"><div class="pill">1</div>Browser sendet ViewState an Server</div>
<div class="step"><div class="pill">2</div>Server prüft kryptografische Signatur</div>
<div class="step"><div class="pill">3</div>Anfrage ist gültig – wird sicher ausgeführt</div>
</div>

<div class="lane bad">
<h3><span class="dot"></span><span class="label">Angriffs-Ablauf</span></h3>
<div class="step"><div class="pill">1</div>Angreifer kennt gestohlenen MachineKey</div>
<div class="step"><div class="pill">2</div>Erstellt gefälschten, signierten ViewState</div>
<div class="step"><div class="pill">3</div>Server prüft Signatur – als GÜLTIG erkannt</div>
<div class="step"><div class="pill">4</div>Schadcode wird unbemerkt ausgeführt</div>
</div>

</div>
