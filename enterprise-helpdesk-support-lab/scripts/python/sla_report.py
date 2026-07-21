from pathlib import Path
import csv
p=Path(__file__).resolve().parents[2]/"datasets"/"sla_daily.csv"
rows=list(csv.DictReader(p.open()))
print("days",len(rows))
print("average_sla",round(sum(float(r["sla_met_pct"]) for r in rows)/len(rows),2))
print("average_fcr",round(sum(float(r["fcr_pct"]) for r in rows)/len(rows),2))
print("average_csat",round(sum(float(r["csat"]) for r in rows)/len(rows),2))
