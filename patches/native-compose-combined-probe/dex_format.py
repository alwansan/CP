#!/usr/bin/env python3
"""Preserve original DEX format during scratch reassembly."""
import argparse,json,re,zipfile,sys
DEX=re.compile(r"classes(?:[2-9]|[1-9][0-9]+)?\.dex$")
API={"035":23,"037":24,"038":26,"039":28}
def versions(apk):
    with zipfile.ZipFile(apk) as z:
        result={}
        for n in z.namelist():
            if not DEX.fullmatch(n):continue
            if n in result:raise ValueError("duplicate dex entry "+n)
            with z.open(n) as f:magic=f.read(8)
            if len(magic)!=8 or magic[:4]!=b"dex\n" or magic[-1]!=0:
                raise ValueError("invalid dex magic "+repr(magic))
            result[n]=magic[4:7].decode("ascii")
        if not result:raise ValueError("no classes dex")
        return result
def api_for(v):
    kinds=set(v.values())
    if len(kinds)!=1 or not kinds<=API.keys():raise ValueError("mixed or unsupported DEX formats "+repr(v))
    return API[next(iter(kinds))]
def main():
    p=argparse.ArgumentParser();p.add_argument("source");p.add_argument("--result");a=p.parse_args()
    initial=versions(a.source)
    if a.result:
        final=versions(a.result)
        print("CP_DEX_FORMAT_COMPARE "+json.dumps({"source":initial,"result":final},sort_keys=True))
        if initial!=final:raise ValueError("DEX header versions changed")
        print("CP_DEX_FORMAT_PRESERVED_PASS")
    else:
        print("CP_DEX_SOURCE_FORMAT "+json.dumps(initial,sort_keys=True),file=sys.stderr)
        print(api_for(initial))
if __name__=="__main__":main()
