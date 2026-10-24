.class public final Lcom/shabakaty/downloader/u15$a;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/u15;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->n:Lcom/shabakaty/downloader/xv2;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->p()V

    goto/16 :goto_9

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u15;->s(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    goto :goto_9

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    goto :goto_8

    .line 16
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_8

    goto :goto_5

    .line 17
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 19
    iget-object v7, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 20
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ne v5, v2, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_7

    .line 21
    iget-object v3, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v3, :cond_d

    goto :goto_7

    .line 22
    :cond_d
    iput-boolean v2, v3, Lcom/shabakaty/downloader/q25;->s:Z

    :goto_7
    const/4 v3, 0x1

    goto :goto_2

    :cond_e
    move v1, v3

    :goto_8
    if-eqz v1, :cond_f

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/u15$a;->r:Lcom/shabakaty/downloader/u15;

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 25
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 26
    :cond_f
    :goto_9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
