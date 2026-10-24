.class public final Lcom/shabakaty/downloader/nz3;
.super Lcom/shabakaty/downloader/af2;
.source "SearchViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
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
.field public final synthetic r:Lcom/shabakaty/downloader/hz3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hz3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/nz3;->r:Lcom/shabakaty/downloader/hz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/nz3;->r:Lcom/shabakaty/downloader/hz3;

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/hz3;->g:Z

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/nz3;->r:Lcom/shabakaty/downloader/hz3;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/zi2;->a(Lcom/shabakaty/downloader/mj;Ljava/util/List;)V

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
