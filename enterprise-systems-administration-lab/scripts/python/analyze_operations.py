from pathlib import Path
import csv, statistics
root=Path(__file__).resolve().parents[2]
with open(root/'datasets/tickets.csv',newline='') as f: rows=list(csv.DictReader(f))
mins=[float(r['resolution_minutes']) for r in rows]
print({'tickets':len(rows),'avg_resolution_minutes':round(statistics.mean(mins),2),'median_resolution_minutes':round(statistics.median(mins),2)})
