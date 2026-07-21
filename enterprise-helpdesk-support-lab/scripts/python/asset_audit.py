from pathlib import Path
import csv
from collections import Counter
p=Path(__file__).resolve().parents[2]/"datasets"/"asset_inventory.csv"
rows=list(csv.DictReader(p.open()))
print("assets",len(rows))
print(Counter(r["status"] for r in rows))
