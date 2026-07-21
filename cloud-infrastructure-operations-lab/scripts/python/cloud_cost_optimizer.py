from pathlib import Path
import csv
p=Path(__file__).resolve().parents[2]/'datasets'/'cloud_resources.csv'
with p.open(newline='',encoding='utf-8') as f:
    rows=list(csv.DictReader(f))
monthly=sum(float(r.get('monthly_cost_usd') or 0) for r in rows)
idle=[r for r in rows if str(r.get('status','')).lower() in {'stopped','idle','unattached'}]
print(f"Monthly cost: ${monthly:,.2f}")
print(f"Optimization candidates: {len(idle)}")
for r in idle[:20]: print(r.get('resource_id'),r.get('resource_type'),r.get('monthly_cost_usd'))
