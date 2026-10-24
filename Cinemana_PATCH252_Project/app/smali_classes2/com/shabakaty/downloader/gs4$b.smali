.class public final Lcom/shabakaty/downloader/gs4$b;
.super Lcom/shabakaty/downloader/af2;
.source "TypeAliasConstructorDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gs4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/l20;Lcom/shabakaty/downloader/fs4;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/gs4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/gs4;

.field public final synthetic s:Lcom/shabakaty/downloader/l20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gs4;Lcom/shabakaty/downloader/l20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gs4$b;->r:Lcom/shabakaty/downloader/gs4;

    iput-object p2, p0, Lcom/shabakaty/downloader/gs4$b;->s:Lcom/shabakaty/downloader/l20;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/gs4;

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/gs4$b;->r:Lcom/shabakaty/downloader/gs4;

    .line 3
    iget-object v1, v4, Lcom/shabakaty/downloader/gs4;->U:Lcom/shabakaty/downloader/md4;

    .line 4
    iget-object v2, v4, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/gs4$b;->s:Lcom/shabakaty/downloader/l20;

    .line 6
    invoke-interface {v3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4$b;->s:Lcom/shabakaty/downloader/l20;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v6

    const-string v0, "underlyingConstructorDescriptor.kind"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4$b;->r:Lcom/shabakaty/downloader/gs4;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 10
    invoke-interface {v0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/gs4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/l20;Lcom/shabakaty/downloader/fs4;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4$b;->r:Lcom/shabakaty/downloader/gs4;

    iget-object v1, p0, Lcom/shabakaty/downloader/gs4$b;->s:Lcom/shabakaty/downloader/l20;

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/gs4;->X:Lcom/shabakaty/downloader/gs4$a;

    .line 14
    iget-object v3, v0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v3}, Lcom/shabakaty/downloader/hs4;->u()Lcom/shabakaty/downloader/q20;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v3}, Lcom/shabakaty/downloader/hs4;->d0()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/wt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move-object v8, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/ao3;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/ao3;

    move-result-object v1

    move-object v2, v1

    .line 19
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 20
    invoke-interface {v1}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v4

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v5

    .line 22
    iget-object v6, v0, Lcom/shabakaty/downloader/yn1;->x:Lcom/shabakaty/downloader/qe2;

    .line 23
    invoke-static {v6}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    sget-object v7, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 26
    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v9

    move-object v0, v8

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 27
    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/yn1;->W0(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/yn1;

    :goto_2
    return-object v8
.end method
