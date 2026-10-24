.class public abstract Lcom/shabakaty/downloader/fs0;
.super Lcom/shabakaty/downloader/es0;
.source "DeserializedPackageFragmentImpl.kt"


# instance fields
.field public final A:Lcom/shabakaty/downloader/kw2;

.field public final B:Lcom/shabakaty/downloader/hi3;

.field public C:Lcom/shabakaty/downloader/ui3;

.field public D:Lcom/shabakaty/downloader/mr2;

.field public final y:Lcom/shabakaty/downloader/gm;

.field public final z:Lcom/shabakaty/downloader/as0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)V
    .locals 0

    const-string p6, "fqName"

    invoke-static {p1, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "storageManager"

    invoke-static {p2, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "module"

    invoke-static {p3, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "proto"

    invoke-static {p4, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "metadataVersion"

    invoke-static {p5, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/es0;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/fs0;->y:Lcom/shabakaty/downloader/gm;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/fs0;->z:Lcom/shabakaty/downloader/as0;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/kw2;

    .line 5
    iget-object p2, p4, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    const-string p3, "proto.strings"

    .line 6
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p3, p4, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    const-string p6, "proto.qualifiedNames"

    .line 8
    invoke-static {p3, p6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/kw2;-><init>(Lcom/shabakaty/downloader/xi3;Lcom/shabakaty/downloader/wi3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fs0;->A:Lcom/shabakaty/downloader/kw2;

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/hi3;

    new-instance p3, Lcom/shabakaty/downloader/fs0$a;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/fs0$a;-><init>(Lcom/shabakaty/downloader/fs0;)V

    invoke-direct {p2, p4, p1, p5, p3}, Lcom/shabakaty/downloader/hi3;-><init>(Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/tm1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/fs0;->B:Lcom/shabakaty/downloader/hi3;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/fs0;->C:Lcom/shabakaty/downloader/ui3;

    return-void
.end method


# virtual methods
.method public S0()Lcom/shabakaty/downloader/o20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fs0;->B:Lcom/shabakaty/downloader/hi3;

    return-object v0
.end method

.method public T0(Lcom/shabakaty/downloader/or0;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fs0;->C:Lcom/shabakaty/downloader/ui3;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/fs0;->C:Lcom/shabakaty/downloader/ui3;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/gs0;

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    const-string v0, "proto.`package`"

    .line 5
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/shabakaty/downloader/fs0;->A:Lcom/shabakaty/downloader/kw2;

    iget-object v6, p0, Lcom/shabakaty/downloader/fs0;->y:Lcom/shabakaty/downloader/gm;

    iget-object v7, p0, Lcom/shabakaty/downloader/fs0;->z:Lcom/shabakaty/downloader/as0;

    const-string v0, "scope of "

    .line 6
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 7
    new-instance v10, Lcom/shabakaty/downloader/fs0$b;

    invoke-direct {v10, p0}, Lcom/shabakaty/downloader/fs0$b;-><init>(Lcom/shabakaty/downloader/fs0;)V

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/gs0;-><init>(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/ti3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/or0;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/fs0;->D:Lcom/shabakaty/downloader/mr2;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fs0;->D:Lcom/shabakaty/downloader/mr2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_memberScope"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
