.class public final Lcom/shabakaty/downloader/h64;
.super Lcom/shabakaty/downloader/af2;
.source "signatureEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sz4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sz4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h64;->r:Lcom/shabakaty/downloader/sz4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/h64;->r:Lcom/shabakaty/downloader/sz4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/sz4;->j()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sz4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "it.valueParameters[p.index].type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
