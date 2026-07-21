from __future__ import annotations
import csv, statistics, sys
from collections import Counter, defaultdict
from pathlib import Path

def main(path: str) -> int:
    rows=list(csv.DictReader(Path(path).open(encoding='utf-8')))
    if not rows:
        print('No tickets found', file=sys.stderr); return 1
    by_priority=defaultdict(list)
    for row in rows: by_priority[row['priority']].append(int(row['minutes_to_resolve']))
    print(f"Tickets: {len(rows)}")
    print(f"SLA met: {sum(r['sla_met']=='Yes' for r in rows)/len(rows):.1%}")
    print('Categories:')
    for name,count in Counter(r['category'] for r in rows).most_common(): print(f"  {name}: {count}")
    print('Average resolution minutes:')
    for priority,values in sorted(by_priority.items()): print(f"  {priority}: {statistics.mean(values):.1f}")
    return 0
if __name__=='__main__': raise SystemExit(main(sys.argv[1] if len(sys.argv)>1 else 'tickets/resolved-tickets.csv'))
