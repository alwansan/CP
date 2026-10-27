#!/usr/bin/env python3
"""Execute the coordinator's actual Smali control flow against fake files/scheduler.
This exercises ordering, event coalescing and idle transitions, not ART verification.
"""
from pathlib import Path
import re
import unittest

SOURCE = (Path(__file__).resolve().parents[1] /
    'Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/MkvReconciler.smali').read_text()

class Flow:
    def __init__(self):
        self.pending = False
        self.work = False
        self.scheduled = []
        self.dispatched = []
        self.files = []

    def run(self, method, *args):
        block = re.search(r'\.method [^\n]*\b' + re.escape(method) + r'\([^\n]+\n(.*?)\.end method', SOURCE, re.S)[1]
        local = int(re.search(r'\.locals (\d+)', block)[1])
        code = [x.strip() for x in block.splitlines() if x.strip() and not x.lstrip().startswith(('#', '.'))]
        labels = {x: n for n, x in enumerate(code) if x.startswith(':')}
        regs = {local+i: a for i,a in enumerate(args)}
        def idx(x):
            return int(x[1:]) + (local if x[0] == 'p' else 0)
        def get(x): return regs.get(idx(x), 0)
        def put(x,v): regs[idx(x)] = v
        pc, result = 0, None
        while pc < len(code):
            line = code[pc]
            pc += 1
            if line.startswith(':'): continue
            op, _, operands = line.partition(' ')
            parts = operands.split(', ')
            if op.startswith('const-string'):
                put(parts[0], operands.split(', ',1)[1][1:-1])
            elif op.startswith('const'):
                put(parts[0], int(parts[1], 0))
            elif op.startswith('move-result'):
                put(parts[0], result)
            elif op.startswith('move'):
                put(parts[0], get(parts[1]))
            elif op == 'sget-boolean': put(parts[0], self.pending)
            elif op == 'sput-boolean': self.pending = bool(get(parts[0]))
            elif op.startswith('sget-object'): put(parts[0], operands.split('->')[1].split(':')[0])
            elif op == 'new-instance': put(parts[0], {})
            elif op == 'check-cast': pass
            elif op == 'array-length': put(parts[0], len(get(parts[1])))
            elif op == 'aget-object': put(parts[0], get(parts[1])[get(parts[2])])
            elif op == 'add-int/lit8': put(parts[0], get(parts[1]) + int(parts[2],0))
            elif op.startswith('invoke-'):
                reglist = operands.split('{',1)[1].split('}',1)[0]
                values = [get(x.strip()) for x in reglist.split(',') if x.strip()]
                name = operands.split('->')[1].split('(')[0]
                if name == 'hasWork': result = self.work
                elif name == 'scheduleAudit': result = self.run(name, values[0])
                elif name == 'schedule': self.scheduled.append(values[2]); result = None
                elif name == '<init>': pass
                elif name == 'get': result = 'context'
                elif name == 'listFiles': result = self.files.copy()
                elif name == 'sort': values[0].sort(key=lambda f: (f['mtime'], f['name']))
                elif name == 'isFile': result = values[0].get('file', True)
                elif name == 'getName': result = values[0]['name']
                elif name == 'toLowerCase': result = values[0].lower()
                elif name == 'endsWith': result = values[0].endswith(values[1])
                elif name == 'reconcileDiskVideo': self.dispatched.append(values[1]['name']); result = True
                else: raise AssertionError('Unmodeled call: ' + line)
            elif op in ('if-eqz','if-nez'):
                condition = bool(get(parts[0]))
                if condition == (op == 'if-nez'): pc = labels[parts[1]]
            elif op == 'if-ge':
                if get(parts[0]) >= get(parts[1]): pc = labels[parts[2]]
            elif op.startswith('goto'): pc = labels[operands]
            elif op == 'return-void': return None
            elif op.startswith('return'): return get(parts[0])
            else: raise AssertionError('Unmodeled instruction: ' + line)

class RecoveryFlowTests(unittest.TestCase):
    def test_events_coalesce(self):
        f = Flow()
        for _ in range(100): f.run('requestAudit')
        self.assertEqual(f.scheduled, [250])

    def test_idle_stops_and_later_event_restarts(self):
        f = Flow(); f.run('requestAudit'); f.run('auditFinished')
        self.assertFalse(f.pending)
        self.assertEqual(f.scheduled, [250])
        f.run('requestAudit')
        self.assertEqual(f.scheduled, [250,250])

    def test_active_work_retries_then_stops(self):
        f = Flow(); f.run('requestAudit'); f.work = True
        f.run('auditFinished')
        self.assertEqual(f.scheduled, [250,5000])
        f.work = False; f.run('auditFinished')
        self.assertFalse(f.pending)
        self.assertEqual(f.scheduled, [250,5000])

    def test_oldest_first_and_finalized_sources_only(self):
        f = Flow()
        f.files = [dict(name=n,mtime=t) for n,t in [
            ('new.mp4',30),('old.mp4',10),('active.mp4.temp',1),
            ('log',0),('other.srt',2),('mux.cnm-recovery.tmp.mp4',3),
            ('same-B.mp4',20),('same-A.mp4',20),('already.mkv',4)]]
        f.run('scanExistingRoot', 'work')
        self.assertEqual(f.dispatched, ['old.mp4','same-A.mp4','same-B.mp4','new.mp4'])

    def test_empty_work(self):
        f = Flow(); f.run('scanExistingRoot','work')
        self.assertEqual(f.dispatched, [])

if __name__ == '__main__': unittest.main()
