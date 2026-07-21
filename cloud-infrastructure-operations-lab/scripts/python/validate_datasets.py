import csv
import pathlib
import sys

root = pathlib.Path(__file__).resolve().parents[2] / "datasets"
errors = []
files = list(root.glob("*.csv"))

for path in files:
    with path.open(newline="", encoding="utf-8") as handle:
        rows = list(csv.reader(handle))
    if len(rows) < 2:
        errors.append(f"{path.name}: no data")

print(f"validated {len(files)} datasets")
if errors:
    print("\n".join(errors))
    sys.exit(1)
