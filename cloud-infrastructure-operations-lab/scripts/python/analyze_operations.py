import csv, pathlib, statistics
root=pathlib.Path(__file__).resolve().parents[2]
with open(root/'datasets/cloud_tickets.csv',newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
resolved=[r for r in rows if r['status']=='Resolved']
print({'tickets':len(rows),'resolved':len(resolved),'sla_met_pct':round(sum(r['sla_met']=='Yes' for r in rows)/len(rows)*100,2),'avg_resolution_hours':round(statistics.mean(float(r['resolution_hours']) for r in resolved),2)})
