$out="$env:TEMP\SupportLogs"; New-Item $out -ItemType Directory -Force | Out-Null; wevtutil epl System "$out\System.evtx"; wevtutil epl Application "$out\Application.evtx"
