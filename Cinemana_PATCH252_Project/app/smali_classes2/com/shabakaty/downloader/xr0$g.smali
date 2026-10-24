.class public final Lcom/shabakaty/downloader/xr0$g;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/a12<",
        "Lcom/shabakaty/downloader/b74;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$g;->r:Lcom/shabakaty/downloader/xr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$g;->r:Lcom/shabakaty/downloader/xr0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 5
    iget v3, v1, Lcom/shabakaty/downloader/ji3;->t:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 8
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->K:I

    .line 9
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->w:Lcom/shabakaty/downloader/gm;

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3, v5}, Lcom/shabakaty/downloader/gm;->a(III)Z

    move-result v1

    if-nez v1, :cond_e

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr0;->Y()Lcom/shabakaty/downloader/l20;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 12
    invoke-interface {v1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v3, "constructor.valueParameters"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v3, "{\n                // Bef\u2026irst().name\n            }"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object v3, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    iget-object v4, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 14
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v7, "<this>"

    .line 15
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeTable"

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ji3;->q()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/ji3;->L:Lcom/shabakaty/downloader/yi3;

    goto :goto_3

    .line 18
    :cond_3
    iget v7, v3, Lcom/shabakaty/downloader/ji3;->t:I

    const/16 v8, 0x20

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 19
    iget v3, v3, Lcom/shabakaty/downloader/ji3;->M:I

    .line 20
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    if-nez v3, :cond_c

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr0;->T0()Lcom/shabakaty/downloader/xr0$a;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/mz2;->I:Lcom/shabakaty/downloader/mz2;

    invoke-virtual {v3, v1, v4}, Lcom/shabakaty/downloader/xr0$a;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v2

    const/4 v4, 0x0

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 23
    move-object v9, v8

    check-cast v9, Lcom/shabakaty/downloader/yh3;

    .line 24
    invoke-interface {v9}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_6

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    move-object v7, v8

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    move-object v2, v7

    :goto_6
    check-cast v2, Lcom/shabakaty/downloader/yh3;

    if-eqz v2, :cond_b

    .line 25
    invoke-interface {v2}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    goto :goto_7

    .line 26
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inline class has no underlying property: "

    .line 27
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_c
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 29
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    const/4 v2, 0x2

    .line 30
    invoke-static {v0, v3, v6, v2}, Lcom/shabakaty/downloader/xs4;->g(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;ZI)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 31
    :goto_7
    new-instance v2, Lcom/shabakaty/downloader/a12;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/a12;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d74;)V

    :goto_8
    return-object v2

    .line 32
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inline class has no primary constructor: "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inline class has no underlying property name in metadata: "

    .line 34
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
