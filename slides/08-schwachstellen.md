# Verwendete <span class="accent">Schwachstellen</span>

<h2><span class="pill-tag">Anatomie</span>Vier CVEs – zwei Patch-Generationen</h2>

<div class="vuln-grid">

<div class="vuln one">
<div class="corner">1</div>
<div class="cve-tag">CVE-2025-53771 <span style="font-weight:400;font-size:.8em">(6.3)</span></div>
<h3>Netzwerk-Spoofing</h3>
<ul>
<li>Spoofing über das Netzwerk</li>
<li>Bypass von CVE-2025-49706</li>
</ul>
</div>

<div class="vuln two">
<div class="corner">2</div>
<div class="cve-tag">CVE-2025-53770 <span style="font-weight:400;font-size:.8em">(9.8)</span></div>
<h3>Remote Code Execution</h3>
<ul>
<li>Manipulierter ViewState → Codeausführung</li>
<li>Bypass von CVE-2025-49704</li>
</ul>
</div>

</div>

<div class="note-row" style="margin-top:1rem;font-size:.85em;opacity:.75">
  Vorgänger (gepatcht 8. Juli): CVE-2025-49704 (8.8 / RCE) &nbsp;·&nbsp; CVE-2025-49706 (6.3 / Spoofing)
</div>

<!--
Der Angriff nutzt zwei CVEs zusammen:

CVE-2025-53771 (CVSS 6.3) – Netzwerk-Spoofing:
Ermöglicht es dem Angreifer, Netzwerkanfragen so zu verschleiern, dass der Server sie als legitim akzeptiert.
Das ist der "Türöffner" – er ebnet den Weg für den eigentlichen Exploit.
Technisch ist es ein Patch-Bypass der älteren Lücke CVE-2025-49706.

CVE-2025-53770 (CVSS 9.8) – Remote Code Execution:
Der Angreifer schickt einen manipulierten, serialisierten ViewState an den Server.
SharePoint deserialisiert das Objekt, was zur Ausführung von beliebigem Code führt.
Auch hier: Patch-Bypass, diesmal von CVE-2025-49704.

Zur Timeline: Die ursprünglichen Lücken CVE-2025-49704 und CVE-2025-49706 wurden am 8. Juli 2025
mit dem regulären Patchday geschlossen. Die Angreifer entwickelten jedoch Bypass-Varianten,
die den Patch umgingen – und diese wurden ab dem 18. Juli als Zero-Day ausgenutzt.
-->
