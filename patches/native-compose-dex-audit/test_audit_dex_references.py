import pathlib,tempfile,unittest
from audit_dex_references import analyze,lexical
class DexAuditTest(unittest.TestCase):
    def test_lexical(self):
        self.assertEqual(lexical('const-string v0, "x#y\\"z" # 0x7f010001'),("const-string v0,",['x#y\\"z']))
        self.assertEqual(lexical("const v0, 0x7f010001 # note")[0],"const v0, 0x7f010001")
    def test_classification(self):
        rows=[("id/item",0x7f010001,"id/cpui_item",0x7f010100),("attr/theme",0x7f020001,"attr/cpui_theme",0x7f020100)]
        with tempfile.TemporaryDirectory() as t:
            p=pathlib.Path(t);d=p/"smali";d.mkdir()
            (d/"R$id.smali").write_text(".class public final Llab/R$id;\n.super Ljava/lang/Object;\n.field public static final item:I = 0x7f010001\n")
            (d/"R$styleable.smali").write_text(".class public final Llab/R$styleable;\n.super Ljava/lang/Object;\n.method static constructor <clinit>()V\n.array-data 4\n 0x7f020001\n.end array-data\n.end method\n")
            (d/"Other.smali").write_text('.class public Llab/Other;\n.super Ljava/lang/Object;\n.method public f()V\n const v0, 0x7f010001\n const-string v1, "0x7f010001"\n # 0x7f010001\n sget v2, Llab/R$id;->item:I\n invoke-virtual {v0}, Landroid/content/res/Resources;->getIdentifier()I\n const-class v1, Landroidx/core/app/RemoteActionCompat;\n const-string v1, "androidx.core.app.RemoteActionCompat"\n.end method\n')
            n,r=analyze(p,rows)
            self.assertEqual(n,3)
            self.assertEqual(sorted(x[4] for x in r["numeric"]),["CONST_CANDIDATE","EXACT_NAMED_R_FIELD","R_STYLEABLE_ARRAY_CANDIDATE"])
            self.assertEqual(len(r["raccess"]),1);self.assertEqual(len(r["resourcecalls"]),1)
            self.assertEqual(len(r["residual"]),2)
if __name__=="__main__":unittest.main()
