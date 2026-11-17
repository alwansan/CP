"""Synthetic B1 durable-admission contract, NOT APK implementation."""
import sqlite3, tempfile, pathlib, unittest

class Queue:
    def __init__(self, path):
        self.db=sqlite3.connect(path)
        self.db.execute('PRAGMA journal_mode=WAL')
        self.db.execute('PRAGMA synchronous=FULL')
        self.db.execute('''CREATE TABLE IF NOT EXISTS intents (
            media TEXT NOT NULL, quality TEXT NOT NULL, batch TEXT NOT NULL,
            state TEXT NOT NULL DEFAULT 'pending', epoch INTEGER NOT NULL DEFAULT 1,
            size INTEGER, reason TEXT, PRIMARY KEY(media,quality))''')
    def admit(self, batch, items, abort=False):
        with self.db:
            for media,quality,size in items:
                self.db.execute('INSERT OR IGNORE INTO intents(media,quality,batch,size) VALUES (?,?,?,?)',(media,quality,batch,size))
            if abort: raise RuntimeError('injected pre-commit failure')
        return len(items) # ACK only after transaction commits; number requested, not count newly inserted
    def claim(self, media, quality):
        with self.db:
            return self.db.execute("UPDATE intents SET state='dispatching' WHERE media=? AND quality=? AND state='pending'",(media,quality)).rowcount
    def receipt(self, media, quality, epoch):
        with self.db:
            return self.db.execute("UPDATE intents SET state='confirmed' WHERE media=? AND quality=? AND epoch=? AND state='dispatching'",(media,quality,epoch)).rowcount
    def cancel(self, media, quality):
        with self.db:
            self.db.execute("UPDATE intents SET state='cancelled',epoch=epoch+1 WHERE media=? AND quality=?",(media,quality))
    def reconcile(self, native_receipts):
        # Ambiguous dispatch does NOT become a blind retransmission.
        for media,quality,epoch in self.db.execute("SELECT media,quality,epoch FROM intents WHERE state='dispatching'").fetchall():
            if (media,quality,epoch) in native_receipts: self.receipt(media,quality,epoch)
    def count(self,state=None):
        return self.db.execute('SELECT count(*) FROM intents'+(' WHERE state=?' if state else ''),(state,) if state else ()).fetchone()[0]
    def fail(self,media,quality,reason):
        with self.db:
            return self.db.execute("UPDATE intents SET state='failed',reason=? WHERE media=? AND quality=? AND state='dispatching'",(reason,media,quality)).rowcount

class Contract(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory(); self.path=pathlib.Path(self.tmp.name)/'queue.db'; self.q=Queue(self.path)
    def tearDown(self): self.q.db.close(); self.tmp.cleanup()
    def reset(self): self.q.db.close(); self.q=Queue(self.path)
    def test_two_batches_unknown_sizes(self):
        self.q.admit('A',[(f'show-A-{i}','240p',None) for i in range(197)])
        self.q.admit('B',[(f'show-B-{i}','240p',None) for i in range(35)])
        self.reset(); self.assertEqual(self.q.count('pending'),232)
    def test_precommit_failure(self):
        with self.assertRaises(RuntimeError): self.q.admit('A',[('a','240p',None)],abort=True)
        self.reset(); self.assertEqual(self.q.count(),0)
    def test_duplicate_request_and_callback(self):
        self.q.admit('A',[('a','240p',None)]); self.q.admit('B',[('a','240p',None)])
        self.assertEqual(self.q.count(),1); self.assertEqual(self.q.claim('a','240p'),1)
        self.assertEqual(self.q.claim('a','240p'),0); self.assertEqual(self.q.receipt('a','240p',1),1)
        self.assertEqual(self.q.receipt('a','240p',1),0)
    def test_death_after_dispatch_before_receipt(self):
        self.q.admit('A',[('a','240p',None),('b','240p',None)]); self.q.claim('a','240p'); self.q.claim('b','240p')
        self.reset(); self.q.reconcile({('a','240p',1)})
        self.assertEqual(self.q.count('confirmed'),1); self.assertEqual(self.q.count('dispatching'),1)
        self.assertEqual(self.q.claim('b','240p'),0)
    def test_cancel_late_receipt(self):
        self.q.admit('A',[('a','240p',None)]); self.q.claim('a','240p'); self.q.cancel('a','240p')
        self.assertEqual(self.q.receipt('a','240p',1),0); self.assertEqual(self.q.count('cancelled'),1)
    def test_failure_does_not_block_other_batch(self):
        self.q.admit('A',[('a','240p',None)]); self.q.admit('B',[('b','240p',None)])
        self.q.claim('a','240p'); self.q.fail('a','240p','HTTP403'); self.q.claim('b','240p'); self.q.receipt('b','240p',1)
        self.assertEqual(self.q.count('failed'),1); self.assertEqual(self.q.count('confirmed'),1)
if __name__=='__main__': unittest.main(verbosity=2)
