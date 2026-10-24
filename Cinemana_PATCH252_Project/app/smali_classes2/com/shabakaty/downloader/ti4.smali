.class public final Lcom/shabakaty/downloader/ti4;
.super Ljava/lang/Object;
.source "suspendFunctionTypes.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/vv2;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/vv2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/y21;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/d51;->a:Lcom/shabakaty/downloader/nu2;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/tb4;->c:Lcom/shabakaty/downloader/fi1;

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/y21;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/tb4;->d:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    sget-object v9, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/vv2;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/w20;ZZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/md4;)V

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    .line 9
    iput-object v0, v8, Lcom/shabakaty/downloader/vv2;->A:Lcom/shabakaty/downloader/eu2;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 11
    iput-object v0, v8, Lcom/shabakaty/downloader/vv2;->B:Lcom/shabakaty/downloader/mr0;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v2, 0x0

    sget-object v3, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    const-string v0, "T"

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v8

    move-object v6, v9

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/lt4;->Y0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/hw2;ILcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 15
    iget-object v1, v8, Lcom/shabakaty/downloader/vv2;->D:Ljava/util/List;

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v8, Lcom/shabakaty/downloader/vv2;->D:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/b30;

    iget-object v2, v8, Lcom/shabakaty/downloader/vv2;->E:Ljava/util/Collection;

    iget-object v3, v8, Lcom/shabakaty/downloader/vv2;->F:Lcom/shabakaty/downloader/md4;

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/shabakaty/downloader/b30;-><init>(Lcom/shabakaty/downloader/q20;Ljava/util/List;Ljava/util/Collection;Lcom/shabakaty/downloader/md4;)V

    iput-object v0, v8, Lcom/shabakaty/downloader/vv2;->C:Lcom/shabakaty/downloader/ts4;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/l20;

    .line 20
    check-cast v1, Lcom/shabakaty/downloader/m20;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/p;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 21
    :cond_0
    sput-object v8, Lcom/shabakaty/downloader/ti4;->a:Lcom/shabakaty/downloader/vv2;

    return-void

    :cond_1
    const/16 v0, 0xd

    .line 22
    invoke-static {v0}, Lcom/shabakaty/downloader/vv2;->w0(I)V

    throw v7

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameters are already set for "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x9

    .line 24
    invoke-static {v0}, Lcom/shabakaty/downloader/vv2;->w0(I)V

    throw v7
.end method
