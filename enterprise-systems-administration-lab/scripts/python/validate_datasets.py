from pathlib import Path
import csv, sys
root=Path(__file__).resolve().parents[2]/'datasets'
errors=[]
for p in root.glob('*.csv'):
    with p.open(newline='',encoding='utf-8') as f:
        rows=list(csv.reader(f))
    if len(rows)<2 or not rows[0]: errors.append(str(p))
print(f'Validated {len(list(root.glob("*.csv")))} CSV datasets')
if errors:
    print('Invalid:',errors); sys.exit(1)
