from pathlib import Path
import csv
from collections import Counter
p=Path(__file__).resolve().parents[2]/"tickets"/"ticket-register.csv"
rows=list(csv.DictReader(p.open()))
print(f"tickets={len(rows)}")
print("sla_met_pct=", round(100*sum(r["sla_result"]=="Met" for r in rows)/len(rows),2))
print("avg_resolution_minutes=", round(sum(int(r["resolution_minutes"]) for r in rows)/len(rows),1))
print("by_category=", dict(Counter(r["category"] for r in rows)))
