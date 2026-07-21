from pathlib import Path
import csv
root=Path(__file__).resolve().parents[2]/"datasets"
for p in sorted(root.glob("*.csv")):
    rows=list(csv.reader(p.open()))
    assert len(rows)>1, f"empty dataset: {p}"
    width=len(rows[0])
    assert all(len(r)==width for r in rows), f"ragged rows: {p}"
    print(p.name, len(rows)-1)
