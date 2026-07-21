from pathlib import Path
import csv, json, sys
root=Path(__file__).resolve().parents[2]
required=['identity/tiered-administration-model.md','pki/enterprise-pki-operations.md','disaster-recovery/dr-exercise-2026-q2.md','monitoring/grafana/sysadmin-dashboard.json']
missing=[x for x in required if not (root/x).exists()]
for csvfile in (root/'datasets').glob('elite_*.csv'):
    with csvfile.open(newline='',encoding='utf-8') as f:
        rows=list(csv.DictReader(f))
        if not rows: raise SystemExit(f'Empty dataset: {csvfile}')
json.loads((root/'monitoring/grafana/sysadmin-dashboard.json').read_text())
if missing: raise SystemExit('Missing: '+', '.join(missing))
print('Elite evidence validation passed')
