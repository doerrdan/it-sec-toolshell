# <span class="accent">Angriffsdiagramm</span>

<h2><span class="pill-tag">Kill Chain</span>Schritt-für-Schritt-Ablauf des ToolShell-Angriffs</h2>

<div class="flow">
<div class="flow-step"><div class="num">1</div><div class="ttl">Internet</div><div class="sub">Angreifer</div></div>
<div class="flow-step"><div class="num">2</div><div class="ttl">/ToolPane.aspx</div><div class="sub">Endpunkt</div></div>
<div class="flow-step peak"><div class="num">3</div><div class="ttl">Deserialisierung</div><div class="sub">Schwachstelle</div></div>
<div class="flow-step peak"><div class="num">4</div><div class="ttl">RCE</div><div class="sub">Codeausführung</div></div>
<div class="flow-step"><div class="num">5</div><div class="ttl">MachineKey</div><div class="sub">gestohlen</div></div>
<div class="flow-step"><div class="num">6</div><div class="ttl">Persistenz</div><div class="sub">Dauerzugriff</div></div>
</div>

<div class="notes-row">
<div class="note warn">
<h4>ViewState-Manipulation</h4>
</div>
<div class="note danger">
<h4>Lateral Movement · Ransomware möglich</h4>
</div>
</div>

<!--
Die Kill Chain des ToolShell-Angriffs in sechs Schritten:

1. Der Angreifer sitzt irgendwo im Internet – kein Zugang zum internen Netz nötig.

2. Er sendet eine manipulierte POST-Anfrage an den öffentlich erreichbaren Endpunkt /_layouts/15/ToolPane.aspx.
   Das ist ein normaler SharePoint-Endpunkt, der eigentlich für das Bearbeiten von Webparts zuständig ist.

3. Die Anfrage enthält einen manipulierten ViewState – ein serialisiertes .NET-Objekt.
   SharePoint deserialisiert diese Daten ohne ausreichende Validierung.

4. Durch die unsichere Deserialisierung wird beliebiger Code auf dem Server ausgeführt – Remote Code Execution.
   Ab hier hat der Angreifer die volle Kontrolle über den SharePoint-Server.

5. Der Angreifer liest den ASP.NET MachineKey aus der Serverkonfiguration aus –
   dieser Schlüssel wird für die kryptografische Signierung von ViewStates verwendet.

6. Mit dem gestohlenen MachineKey kann der Angreifer jederzeit gültige ViewStates fälschen
   und dauerhaft Code ausführen – auch nach einem Patch, solange der Key nicht rotiert wurde.

Mögliche Folgen: Datendiebstahl, Lateral Movement ins restliche Netzwerk, Ransomware-Deployment.
-->
