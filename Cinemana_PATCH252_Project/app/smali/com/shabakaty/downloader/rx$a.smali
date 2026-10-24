.class public final Lcom/shabakaty/downloader/rx$a;
.super Lcom/shabakaty/downloader/af2;
.source "CategoryDetailsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rx;->q()V
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
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rx;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rx;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/rx;->x:I

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/tj;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 10
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/zi2;->a(Lcom/shabakaty/downloader/mj;Ljava/util/List;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    .line 15
    iput-boolean v2, p1, Lcom/shabakaty/downloader/rx;->y:Z

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->l(Lcom/shabakaty/downloader/mj;)V

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/rx$a;->r:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vx;->L()V

    .line 23
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
