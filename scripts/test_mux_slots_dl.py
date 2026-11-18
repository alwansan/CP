#!/usr/bin/env python3
"""Exercise the real compiled Java slot helper in isolated JVMs; no media/user data."""
import os,select,subprocess,tempfile
from pathlib import Path
root=Path(__file__).resolve().parents[1]
src=root/"patches/local-account/src/com/shabakaty/cinemana/local"
with tempfile.TemporaryDirectory(prefix="cpdl-slots-") as t:
    t=Path(t)
    stub=t/"Context.java"
    stub.write_text("package android.content; public abstract class Context { public abstract java.io.File getFilesDir(); }")
    out=t/"classes"; out.mkdir()
    subprocess.run(["javac","-d",str(out),str(stub),str(src/"MuxSlotsDL.java"),str(src/"TokenWorkDL.java"),str(root/"scripts/cp_dl_art/MuxSlotsDLTest.java")],check=True)
    base=["java","-cp",str(out),"MuxSlotsDLTest"]
    subprocess.run(base+["self",str(t/"one")],timeout=30,check=True)
    workers=[]
    def read(p):
        if not select.select([p.stdout],[],[],10)[0]: raise AssertionError("worker timed out")
        line=p.stdout.readline().decode().strip()
        if not line: raise AssertionError("worker terminated")
        return line
    def launch():
        p=subprocess.Popen(base+["hold",str(t/"shared")],stdin=subprocess.PIPE,stdout=subprocess.PIPE,bufsize=0)
        workers.append(p)
        assert read(p)=="WAIT"
        return p
    try:
        for i in range(3):
            p=launch()
            assert read(p)=="ACQUIRED"
        p4=launch()
        assert not select.select([p4.stdout],[],[],0.6)[0], "fourth process acquired a slot early"
        workers[0].kill();workers[0].wait(timeout=5)
        assert read(p4)=="ACQUIRED", "kernel did not release killed worker's slot"
        for p in workers[1:]:
            p.stdin.write(b"x"); p.stdin.flush()
            assert p.wait(timeout=10)==0
        # Lock files must remain, and a fresh worker can use them.
        assert len(list((t/"shared").glob("slot-*.lock")))==3
        p5=launch();assert read(p5)=="ACQUIRED"
        p5.stdin.write(b"x");p5.stdin.flush();assert p5.wait(timeout=10)==0
        print("CPDL CROSS-PROCESS PASS: 3 slots, fourth waits, killed owner released, new owner succeeds")
    finally:
        for p in workers:
            if p.poll() is None: p.kill();p.wait()
