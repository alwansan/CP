import pathlib,tempfile,unittest
from rewrite_styleables import read_styleable
class StyleableProof(unittest.TestCase):
    def test_array_producers(self):
        s=""".class public Llab/R$styleable;
.super Ljava/lang/Object;
.field public static A:[I
.field public static A_alpha:I = 0x1
.method static constructor <clinit>()V
.locals 2
const v0, 0x1010001
const/high16 v1, 0x7f010000
filled-new-array {v0, v1}, [I
move-result-object v0
sput-object v0, Llab/R$styleable;->A:[I
return-void
.end method
"""
        with tempfile.TemporaryDirectory() as tmp:
            p=pathlib.Path(tmp)/"R$styleable.smali";p.write_text(s)
            _,arrays,indexes,sizes=read_styleable(p,"Llab/R$styleable;")
            self.assertEqual(arrays["A"],[(0x1010001,7),(0x7f010000,8)])
            self.assertEqual(indexes,{"A_alpha":1});self.assertFalse(sizes)
            p.write_text(s.replace("return-void","invoke-static {}, Llab/Other;->f()V\nreturn-void"))
            with self.assertRaises(ValueError):read_styleable(p,"Llab/R$styleable;")
if __name__=="__main__":unittest.main()
