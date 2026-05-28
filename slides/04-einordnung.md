# <span class="accent">Einordnung</span> des Angriffs

<h2><span class="pill-tag">Profil</span>CVE-2025-53770 im Überblick</h2>

<div class="score-layout">

<div class="score-card">
<div class="num">9.8</div>
<div class="lbl">CVSS Score</div>
<div class="crit">KRITISCH</div>
</div>

<div class="facts">
<div class="fact-row"><div class="k">CVE</div><div class="v">CVE-2025-53770</div></div>
<div class="fact-row"><div class="k">Typ</div><div class="v">Zero-Day RCE</div></div>
<div class="fact-row"><div class="k">Authentifizierung</div><div class="v">Nicht erforderlich</div></div>
<div class="fact-row"><div class="k">Ziel</div><div class="v">SharePoint Server (On-Premise)</div></div>
<div class="fact-row"><div class="k">Betroffen</div><div class="v">2016 · 2019 · Subscription Edition</div></div>
<div class="fact-row"><div class="k">Nicht betroffen</div><div class="v">Microsoft 365 / SharePoint Online</div></div>
</div>

</div>

<!--
CVE-2025-53770 ist der Kern dieses Angriffs.

CVSS 9.8 von 10 – das ist quasi das Maximum. Zur Einordnung: alles ab 9.0 gilt als "kritisch".

Besonders gefährlich macht diese Lücke, dass keinerlei Authentifizierung nötig ist –
ein Angreifer aus dem Internet kann einfach eine manipulierte HTTP-Anfrage schicken, ohne sich vorher irgendwo einzuloggen.

Wichtig für die Eingrenzung: Nur On-Premise-Installationen sind betroffen – also Server, die Organisationen selbst betreiben.
Microsoft 365 bzw. SharePoint Online-Kunden in der Cloud sind nicht gefährdet.
Betroffen sind die Versionen SharePoint Server 2016, 2019 und Subscription Edition.
-->
