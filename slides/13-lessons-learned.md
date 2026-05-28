# <span class="accent">Lessons Learned</span>

<h2><span class="pill-tag">Takeaways</span>Was wir aus diesem Angriff mitnehmen</h2>

<div class="lessons">

<div class="lesson">
<div class="head"><span class="num">L1</span><h3>Keine öffentliche Erreichbarkeit</h3></div>
</div>

<div class="lesson">
<div class="head"><span class="num">L2</span><h3>Regelmäßige Sicherheitsupdates</h3></div>
</div>

<div class="lesson">
<div class="head"><span class="num">L3</span><h3>Aktives Monitoring</h3></div>
</div>

<div class="lesson">
<div class="head"><span class="num">L4</span><h3>Schnelle Incident Response</h3></div>
</div>

</div>

<!--
Vier zentrale Erkenntnisse aus dem ToolShell-Angriff:

L1 – Keine öffentliche Erreichbarkeit:
SharePoint-Server sollten nicht direkt aus dem Internet zugänglich sein.
VPN oder Zero-Trust-Zugang hätte den Angriffsvektor von vornherein eliminiert.
Von über 9.000 weltweit exponierten SharePoints waren viele ohne jeden Netzschutz erreichbar.

L2 – Regelmäßige Sicherheitsupdates:
Die ursprünglichen Lücken CVE-2025-49704/49706 waren am 8. Juli gepatcht –
viele betroffene Systeme hatten diesen Patch noch nicht eingespielt.
Jeder Tag Verzögerung beim Patchen erhöht das Angriffsfenster.

L3 – Aktives Monitoring:
Ohne Überwachung bleiben Angriffe im Schnitt über 200 Tage unentdeckt.
Wer keine Alerts auf ungewöhnliche POST-Requests an SharePoint-Endpunkten hat,
merkt eine Kompromittierung oft erst, wenn es zu spät ist.

L4 – Schnelle Incident Response:
Reaktionspläne müssen vorhanden und regelmäßig geübt sein.
Im Ernstfall zählt jede Stunde – besonders bei APT-Gruppen, die sofort nach
der Erstinfektion MachineKeys stehlen und Persistenz aufbauen.
-->
