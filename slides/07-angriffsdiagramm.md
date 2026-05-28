# <span class="accent">Angriffsdiagramm</span>

<h2><span class="pill-tag">Kill Chain</span>Schritt-für-Schritt-Ablauf des ToolShell-Angriffs</h2>

<div class="flow">
<div class="flow-step"><div class="num">1</div><div class="ttl">Internet</div><div class="sub">Angreifer</div></div>
<div class="flow-step"><div class="num">2</div><div class="ttl">/ToolPane.aspx</div><div class="sub">SharePoint-Endpunkt</div></div>
<div class="flow-step peak"><div class="num">3</div><div class="ttl">Deserialisierung</div><div class="sub">Schwachstelle</div></div>
<div class="flow-step peak"><div class="num">4</div><div class="ttl">RCE</div><div class="sub">Code-Ausführung</div></div>
<div class="flow-step"><div class="num">5</div><div class="ttl">MachineKeys</div><div class="sub">Schlüssel gestohlen</div></div>
<div class="flow-step"><div class="num">6</div><div class="ttl">Persistenz</div><div class="sub">Dauerhafter Zugriff</div></div>
</div>

<div class="notes-row">
<div class="note warn">
<h4>ViewState-Manipulation</h4>
<p>Gefälschte Anfragen werden vom Server als legitim behandelt – kein Verdacht.</p>
</div>
<div class="note danger">
<h4>Datendiebstahl und Folge-Angriffe</h4>
<p>Vollständige Kontrolle, Ransomware möglich, seitliche Netzwerk-Bewegung.</p>
</div>
</div>
