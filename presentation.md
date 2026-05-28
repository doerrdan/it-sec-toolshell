---
marp: true
theme: toolshell
paginate: true
size: 16:9
title: ToolShell – SharePoint Zero-Day Angriff
description: CVE-2025-53770 – Analyse, Auswirkungen und Gegenmaßnahmen
author: Prissner Elias, Doerr Daniel, Maendler Lukas
---

<!-- _class: title -->

<div class="title-stamp">CVE-2025-53770</div>

<h1 class="huge">Tool<span class="pink">Shell</span></h1>

<div class="subtitle">SharePoint Zero-Day Angriff</div>

<div class="meta-strip">
<div class="chip crit"><strong>9.8</strong> &nbsp;CVSS Kritisch</div>
<div class="chip">Zero-Day RCE</div>
<div class="chip">Kein Login nötig</div>
</div>

<div class="authors">
Prissner Elias <span>·</span> Doerr Daniel <span>·</span> Maendler Lukas
</div>

---

# Was ist <span class="accent">Microsoft SharePoint?</span>

<h2><span class="pill-tag">Kontext</span>Die Plattform hinter dem Angriff</h2>

<div class="grid-3">

<div class="tile pink">
<div class="head"><h3>Dokumenten­verwaltung</h3></div>
<p>Zentrale Ablage für Dateien und Dokumente aller Art im Unternehmen.</p>
</div>

<div class="tile purple">
<div class="head"><h3>Zusammenarbeit</h3></div>
<p>Teams arbeiten gemeinsam an Projekten, Seiten und Inhalten.</p>
</div>

<div class="tile">
<div class="head"><h3>Intranet</h3></div>
<p>Interne Webseiten und Portale für Unternehmen und Behörden.</p>
</div>

</div>

<div class="sp-bottom">
<div class="sp-head">SharePoint enthält häufig:</div>
<div class="sp-list">
<div class="sp-item">Vertrauliche Dokumente</div>
<div class="sp-item">Zugangsdaten und Passwörter</div>
<div class="sp-item">Interne Kommunikation</div>
</div>
</div>

---

# <span class="accent">Grundbegriffe</span> einfach erklärt

<h2><span class="pill-tag">Glossar</span>Vier Begriffe, die heute oft fallen</h2>

<div class="term-grid">

<div class="term">
<div class="badge pink">CVE</div>
<div class="body">
<em>Common Vulnerabilities and Exposures</em>
<p>Eindeutige ID für jede bekannte Sicherheitslücke – weltweit einheitlicher Standard.</p>
</div>
</div>

<div class="term">
<div class="badge purple">APT</div>
<div class="body">
<em>Advanced Persistent Threat</em>
<p>Professionelle, oft staatlich finanzierte Hackergruppen mit langfristigen, gezielten Angriffszielen.</p>
</div>
</div>

<div class="term">
<div class="badge dark">CVSS</div>
<div class="body">
<em>Score 0 – 10</em>
<p>Misst die Gefährlichkeit einer Schwachstelle. 9.8 bedeutet: extrem kritisch, sofortiger Handlungsbedarf.</p>
</div>
</div>

<div class="term">
<div class="badge peach">BSI</div>
<div class="body">
<em>Bundesamt für Sicherheit in der IT</em>
<p>Deutsche Behörde, die IT-Bedrohungen offiziell bewertet und Warnungen herausgibt.</p>
</div>
</div>

</div>

---

# <span class="accent">Einordnung</span> des Angriffs

<h2><span class="pill-tag">Profil</span>CVE-2025-53770 im Überblick</h2>

<div class="score-layout">

<div class="score-card">
<div class="num">9.8</div>
<div class="lbl">CVSS Score</div>
<div class="crit">KRITISCH</div>
<div class="sub">Höchste Bedrohungsstufe</div>
</div>

<div class="facts">
<div class="fact-row"><div class="k">CVE-Kennung</div><div class="v">CVE-2025-53770</div></div>
<div class="fact-row"><div class="k">Angriffstyp</div><div class="v">Zero-Day – keine Lösung zur Zeit des Angriffs</div></div>
<div class="fact-row"><div class="k">Methode</div><div class="v">Remote Code Execution (RCE)</div></div>
<div class="fact-row"><div class="k">Authentifizierung</div><div class="v">NICHT erforderlich – kein Login nötig</div></div>
<div class="fact-row"><div class="k">Ziel</div><div class="v">Microsoft SharePoint Server</div></div>
</div>

</div>

---

# <span class="accent">Offizieller Kontext</span>

<h2><span class="pill-tag">BSI</span>Einschätzung & weltweite Auswirkungen</h2>

<div class="stat-hero">
<div class="big">400+</div>
<div class="text">
<div class="lead">bestätigte kompromittierte Systeme weltweit</div>
<div class="sub">In Eigenregie betriebene On-Premise SharePoint Server in zahlreichen Organisationen</div>
</div>
</div>

<div class="bullet-list">
<div class="item">Massenangriffe weltweit – koordinierte globale Angriffswelle innerhalb kurzer Zeit</div>
<div class="item">Deutschland ebenfalls betroffen – Behörden und Unternehmen im Visier der Angreifer</div>
<div class="item warn">BSI stuft den Angriff <strong>Orange</strong> ein – Maßnahmen müssen unverzüglich ergriffen werden</div>
<div class="item warn">Angriffe erfolgten, <strong>bevor</strong> ein Sicherheitspatch verfügbar war (Zero-Day-Situation)</div>
</div>

---

# Die <span class="accent">Angreifer</span>

<h2><span class="pill-tag">Threat Actors</span>Staatlich geförderte APT-Gruppen</h2>

<div class="attackers">

<div class="stack">

<div class="apt-card">
<div class="ico">LT</div>
<div>
<h3>Linen Typhoon</h3>
<p>Chinesische APT-Gruppe, spezialisiert auf das Stehlen von geistigem Eigentum. Ziele: Behörden, Verteidigung, Menschenrechtsgruppen.</p>
</div>
</div>

<div class="apt-card violet">
<div class="ico">VT</div>
<div>
<h3>Violet Typhoon</h3>
<p>Chinesische APT-Gruppe, spezialisiert auf Spionage in den USA, Europa und Ostasien. Ziele: Behörden, Militär (ehem. Personal)…</p>
</div>
</div>

<div class="apt-card storm">
<div class="ico">S</div>
<div>
<h3>Storm-2603</h3>
<p>Wahrscheinlich in China ansässige Gruppe. Finanzielle und spionage-relevante Motivation.</p>
</div>
</div>

</div>

<div class="motivation">
<h3>Motivation</h3>
<div class="m">Industriespionage</div>
<div class="m">Datendiebstahl</div>
<div class="m">Strategischer Zugriff</div>
<div class="m">Langfristige Persistenz</div>
</div>

</div>

---

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

---

# Verwendete <span class="accent">Schwachstellen</span>

<h2><span class="pill-tag">Anatomie</span>Beide Schwachstellen aufgeschlüsselt</h2>

<div class="vuln-grid">

<div class="vuln one">
<div class="corner">1</div>
<div class="cve-tag">CVE-2025-53771</div>
<h3>Authentifizierungs-Bypass</h3>
<ul>
<li>Erlaubt es, die Authentifizierung zu umgehen</li>
<li>Öffnet die Tür zum eigentlichen Exploit</li>
</ul>
</div>

<div class="vuln two">
<div class="corner">2</div>
<div class="cve-tag">CVE-2025-53770</div>
<h3>Remote Code Execution</h3>
<ul>
<li>Angreifer schickt manipulierte Daten (ViewState)</li>
<li>Server führt fremden Code aus</li>
</ul>
</div>

</div>

---

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

---

# <span class="accent">Auswirkungen</span> des Angriffs

<h2><span class="pill-tag">Schaden</span>Was Angreifer nach der Kompromittierung erreichen</h2>

<div class="grid-2">

<div class="tile pink">
<div class="head"><h3>Alle gespeicherten Dokumente</h3></div>
<p>Betriebsgeheimnisse, HR-Akten, Verträge, Projektunterlagen</p>
</div>

<div class="tile danger">
<div class="head"><h3>Zugangsdaten</h3></div>
<p>Passwörter, Tokens, API-Schlüssel, Zertifikate</p>
</div>

<div class="tile purple">
<div class="head"><h3>Interne Kommunikation</h3></div>
<p>E-Mails, Teams-Chats, Projektpläne, Sitzungsprotokolle</p>
</div>

<div class="tile">
<div class="head"><h3>Server-Konfiguration</h3></div>
<p>Netzwerkstruktur, Firewallregeln, Systemeinstellungen</p>
</div>

</div>

---

# Warum besonders <span class="accent">gefährlich?</span>

<h2><span class="pill-tag">Risiko</span>Vier entscheidende Risikofaktoren</h2>

<div class="grid-2">

<div class="tile danger">
<div class="head"><h3>Kein Login nötig</h3></div>
<p>Angriff aus jedem Internetzugang heraus möglich – keine gestohlenen Zugangsdaten erforderlich.</p>
</div>

<div class="tile">
<div class="head"><h3>Schwer zu erkennen</h3></div>
<p>Legitim aussehende Anfragen hinterlassen kaum Spuren in Standard-Protokollen.</p>
</div>

<div class="tile pink">
<div class="head"><h3>Kombination mehrerer Lücken</h3></div>
<p>Deserialisierung und ViewState-Manipulation macht Abwehr erheblich schwieriger.</p>
</div>

<div class="tile purple">
<div class="head"><h3>Dauerhafter Verbleib</h3></div>
<p>Angreifer können sich jahrelang im System halten, ohne entdeckt zu werden.</p>
</div>

</div>

---

# <span class="accent">Gegenmaßnahmen</span>

<h2><span class="pill-tag">Action Plan</span>Empfohlene Schritte zum Schutz</h2>

<div class="measures">

<div class="measure urgent">
<div class="num">00</div>
<div class="body">
<h4>Antimalware Scan Interface (AMSI) und Microsoft Defender verwenden</h4>
<p>Betreiber mit aktiviertem AMSI-Feature und Nutzer von Microsoft Defender für SharePoint Server sind vor einer Ausnutzung geschützt.</p>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure urgent">
<div class="num">01</div>
<div class="body">
<h4>Sicherheitsupdates einspielen</h4>
<p>Microsofts Patch für CVE-2025-53770 sofort installieren. Automatische Updates aktivieren.</p>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure urgent">
<div class="num">02</div>
<div class="body">
<h4>MachineKeys rotieren</h4>
<p>Alle bestehenden MachineKeys als kompromittiert betrachten und sofort erneuern.</p>
</div>
<div class="badge">DRINGEND</div>
</div>

<div class="measure">
<div class="num">03</div>
<div class="body">
<h4>Logs analysieren</h4>
<p>Alle Anfragen an /ToolPane.aspx rückwirkend prüfen. Anomalien und unbekannte Clients suchen.</p>
</div>
<div></div>
</div>

<div class="measure">
<div class="num">04</div>
<div class="body">
<h4>Server-Monitoring einrichten</h4>
<p>Echtzeit-Überwachung auf verdächtige Aktivitäten konfigurieren und Alarme definieren.</p>
</div>
<div></div>
</div>

</div>

---

# <span class="accent">Lessons Learned</span>

<h2><span class="pill-tag">Takeaways</span>Was wir aus diesem Angriff mitnehmen</h2>

<div class="lessons">

<div class="lesson">
<div class="head"><span class="num">L1</span><h3>Keine öffentliche Erreichbarkeit</h3></div>
<p>SharePoint-Server nicht direkt aus dem Internet erreichbar machen. VPN oder Zero-Trust-Zugang verwenden.</p>
</div>

<div class="lesson">
<div class="head"><span class="num">L2</span><h3>Regelmäßige Sicherheitsupdates</h3></div>
<p>Systeme müssen zeitnah gepatcht werden – jeder Tag Verzögerung erhöht das Risiko einer Kompromittierung.</p>
</div>

<div class="lesson">
<div class="head"><span class="num">L3</span><h3>Aktives Monitoring</h3></div>
<p>Ohne Überwachung bleiben Angriffe im Durchschnitt über 200 Tage unentdeckt.</p>
</div>

<div class="lesson">
<div class="head"><span class="num">L4</span><h3>Schnelle Incident Response</h3></div>
<p>Reaktionspläne müssen vorhanden und regelmäßig geübt sein – im Ernstfall zählt jede Stunde.</p>
</div>

</div>

---

# <span class="accent">Fazit</span>

<h2><span class="pill-tag">Zusammenfassung</span>Was bleibt hängen</h2>

<div class="conclusion-banner">
Sehr kritische Schwachstelle – einfacher Angriff, enormer Schaden
</div>

<div class="conclusion-list">
<div class="ci">CVE-2025-53770 zeigt, wie eine einzige Sicherheitslücke zur vollständigen Kompromittierung führen kann – ohne Login, ohne Vorwarnung.</div>
<div class="ci">Staatliche Akteure nutzen Zero-Days gezielt für Spionage und langfristige Infiltration wichtiger Institutionen und Unternehmen.</div>
<div class="ci highlight">Nur durch konsequente Updates, aktives Monitoring und schnelle Reaktion lassen sich solche Angriffe abwehren oder begrenzen.</div>
</div>

---

<!-- _class: end -->

# Vielen <span class="accent">Dank.</span>

<div class="question">Fragen?</div>

<div class="footer-glass">
<div class="tags"><strong>CVE-2025-53770</strong> &nbsp;·&nbsp; CVSS 9.8 &nbsp;·&nbsp; Zero-Day RCE &nbsp;·&nbsp; Kein Login nötig &nbsp;·&nbsp; Staatliche Akteure</div>
<div class="credits">ToolShell – SharePoint Zero-Day Angriff &nbsp;·&nbsp; Prissner, Elias &nbsp;·&nbsp; Doerr, Daniel &nbsp;·&nbsp; Maendler, Lukas</div>
</div>
