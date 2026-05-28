# <span class="accent">Gegenmaßnahmen</span>

<h2><span class="pill-tag">Action Plan</span>Empfohlene Schritte zum Schutz</h2>

<div class="measures">

<div class="measure urgent">
<div class="num">00</div>
<div class="body">
<h4>AMSI + Microsoft Defender aktivieren</h4>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure urgent">
<div class="num">01</div>
<div class="body">
<h4>Notfall-Patch einspielen</h4>
<p>Alleiniges Patchen reicht nicht – Kompromittierung prüfen</p>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure urgent">
<div class="num">02</div>
<div class="body">
<h4>ASP.NET MachineKeys rotieren + IIS neu starten</h4>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure">
<div class="num">03</div>
<div class="body">
<h4>Logs auf /ToolPane.aspx prüfen</h4>
</div>
<div></div>
</div>

<div class="measure">
<div class="num">04</div>
<div class="body">
<h4>Server-Monitoring einrichten</h4>
</div>
<div></div>
</div>

<div class="measure">
<div class="num">05</div>
<div class="body">
<h4>Notfall-Fallback: Internetzugang trennen</h4>
</div>
<div></div>
</div>

</div>

<!--
Sechs Maßnahmen, priorisiert nach BSI-Empfehlung:

00 – AMSI + Microsoft Defender: Betreiber mit aktiviertem AMSI-Feature sind vor der Ausnutzung geschützt.
Das Feature ist seit September 2023 standardmäßig aktiviert – sollte aber explizit geprüft werden.

01 – Notfall-Patch: Microsofts Notfall-Update für CVE-2025-53770 sofort installieren.
WICHTIG: Alleiniges Patchen ist laut BSI nicht ausreichend, da Angreifer vor dem Patch
bereits MachineKeys gestohlen haben können. Eine Kompromittierungsprüfung ist zwingend nötig.

02 – MachineKeys rotieren + IIS neu starten: Alle ASP.NET Machine Keys als kompromittiert betrachten,
sofort erneuern, und danach den IIS auf allen SharePoint-Servern neu starten.
Das ist die wichtigste Maßnahme gegen persistenten Zugriff.

03 – Logs analysieren: Alle POST-Anfragen an /_layouts/15/ToolPane.aspx rückwirkend prüfen,
besonders im Zeitraum 17.–19. Juli. Bekannte Angreifer-IPs: 107.191.58.76, 104.238.159.149 u.a.

04 – Monitoring: Echtzeit-Überwachung auf verdächtige Aktivitäten, insbesondere auf den
SharePoint-Endpunkten und für unbekannte POST-Requests.

05 – Notfall-Fallback: Wenn kurzfristig weder Patch noch AMSI umsetzbar sind:
Server sofort vom Internet trennen. Laut BSI ist das die Mindestmaßnahme.
Restriktive Firewall-Regeln allein reichen übrigens nicht – wenn der Angreifer schon drin ist,
hilft eine Firewall nach außen nicht mehr.
-->
