.class public Lcom/shabakaty/downloader/vr4;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wr4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wr4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vr4;->a:Lcom/shabakaty/downloader/wr4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ga2;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->z:Lcom/shabakaty/downloader/ka2;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vr4;->a:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pa2;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vr4;->a:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
