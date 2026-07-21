from pathlib import Path
import csv
from collections import Counter
p=Path(__file__).resolve().parents[2]/"datasets"/"phishing_reports.csv"
rows=list(csv.DictReader(p.open()))
print("reports",len(rows))
print(Counter(r["classification"] for r in rows))
