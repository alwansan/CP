#!/usr/bin/env python3
"""PATCH320: downloads card lookup bypasses recursive resource-name traversal."""
from pathlib import Path
import re

root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
s=(root/"smali_classes6/com/shabakaty/cinemana/ca1/Native98.smali").read_text()
xml=(root/"res/values/public.xml").read_text()

def method(name):
    all_methods=re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",s)
    selected=[m for m in all_methods if name in m.split("\n",1)[0]]
    assert len(selected)==1,(name,len(selected))
    return selected[0]

find=method("find(Landroid/view/View;Ljava/lang/String;)")
assert '<public type="id" name="download_button" id="0x7f0a0146" />' in xml
assert 'const-string v0, "download_button"' in find
assert "const v0, 0x7f0a0146" in find
assert "Landroid/view/View;->findViewById(I)Landroid/view/View;" in find
assert find.index("->findViewById(I)")<find.index("->getResourceEntryName(I)")
assert ":patch320_legacy" in find
assert "Lcom/shabakaty/cinemana/ca1/Native98;->find" in find, "future unknown view names must retain legacy recursion"
bind=method("bind(Landroid/view/View;)V")
assert 'const-string v1, "download_button"' in bind
assert "Native98;->find" in bind
assert "Landroid/widget/CheckBox;->setChecked(Z)V" in bind
assert "Landroid/widget/CheckBox;->setVisibility(I)V" in bind
assert "Landroid/view/View;->setVisibility(I)V" in bind
assert "Lcom/shabakaty/cinemana/ca1/R94;->call" in bind
print("PASS PATCH320: direct verified native download_button ID; fallback lookup and selection/visibility behavior retained")
