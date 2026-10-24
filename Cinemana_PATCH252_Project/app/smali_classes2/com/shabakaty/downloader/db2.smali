.class public final Lcom/shabakaty/downloader/db2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uf2;

.field public final synthetic s:Lcom/shabakaty/downloader/q20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf2;Lcom/shabakaty/downloader/q20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/db2;->r:Lcom/shabakaty/downloader/uf2;

    iput-object p2, p0, Lcom/shabakaty/downloader/db2;->s:Lcom/shabakaty/downloader/q20;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/db2;->r:Lcom/shabakaty/downloader/uf2;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/x72;->a:Lcom/shabakaty/downloader/x72;

    move-object v9, v2

    .line 3
    iget-object v15, v0, Lcom/shabakaty/downloader/db2;->s:Lcom/shabakaty/downloader/q20;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "javaResolverCache"

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v14, Lcom/shabakaty/downloader/uf2;

    .line 7
    iget-object v13, v1, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object v12, v13, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v11, Lcom/shabakaty/downloader/y72;

    move-object v2, v11

    .line 12
    iget-object v3, v12, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    iget-object v4, v12, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    iget-object v5, v12, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    iget-object v6, v12, Lcom/shabakaty/downloader/y72;->d:Lcom/shabakaty/downloader/bs0;

    .line 13
    iget-object v7, v12, Lcom/shabakaty/downloader/y72;->e:Lcom/shabakaty/downloader/k64;

    iget-object v8, v12, Lcom/shabakaty/downloader/y72;->f:Lcom/shabakaty/downloader/y41;

    .line 14
    iget-object v10, v12, Lcom/shabakaty/downloader/y72;->h:Lcom/shabakaty/downloader/v72;

    iget-object v0, v12, Lcom/shabakaty/downloader/y72;->i:Lcom/shabakaty/downloader/yw3;

    move-object/from16 v28, v1

    move-object v1, v11

    move-object v11, v0

    iget-object v0, v12, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    move-object/from16 v29, v1

    move-object v1, v12

    move-object v12, v0

    .line 15
    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->k:Lcom/shabakaty/downloader/ku2;

    move-object/from16 v30, v13

    move-object v13, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->l:Lcom/shabakaty/downloader/r93;

    move-object/from16 v31, v14

    move-object v14, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->m:Lcom/shabakaty/downloader/ph4;

    move-object/from16 v32, v15

    move-object v15, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->n:Lcom/shabakaty/downloader/nl2;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->p:Lcom/shabakaty/downloader/jq3;

    move-object/from16 v18, v0

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->q:Lcom/shabakaty/downloader/w8;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->s:Lcom/shabakaty/downloader/w62;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->t:Lcom/shabakaty/downloader/z72;

    move-object/from16 v22, v0

    .line 17
    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->v:Lcom/shabakaty/downloader/k82;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/y72;->w:Lcom/shabakaty/downloader/o72;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x800000

    .line 18
    invoke-direct/range {v2 .. v27}, Lcom/shabakaty/downloader/y72;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/u62;Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/bs0;Lcom/shabakaty/downloader/k64;Lcom/shabakaty/downloader/y41;Lcom/shabakaty/downloader/x72;Lcom/shabakaty/downloader/v72;Lcom/shabakaty/downloader/yw3;Lcom/shabakaty/downloader/c82;Lcom/shabakaty/downloader/ku2;Lcom/shabakaty/downloader/r93;Lcom/shabakaty/downloader/ph4;Lcom/shabakaty/downloader/nl2;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/jq3;Lcom/shabakaty/downloader/w8;Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/w62;Lcom/shabakaty/downloader/z72;Lcom/shabakaty/downloader/ez2;Lcom/shabakaty/downloader/k82;Lcom/shabakaty/downloader/o72;Lcom/shabakaty/downloader/sj4;I)V

    const-string v0, "<this>"

    move-object/from16 v1, v30

    .line 19
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v2, v29

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/bg2;

    .line 21
    iget-object v3, v1, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 22
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->c:Lcom/shabakaty/downloader/kf2;

    .line 23
    invoke-direct {v0, v2, v3, v1}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    .line 24
    invoke-virtual/range {v28 .. v28}, Lcom/shabakaty/downloader/r20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v28

    iget-object v2, v2, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    .line 25
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/uf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V

    return-object v4
.end method
