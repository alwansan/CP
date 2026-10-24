.class public final Lcom/shabakaty/downloader/l1;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ts4;",
        "Ljava/lang/Iterable<",
        "+",
        "Lcom/shabakaty/downloader/qe2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/l1;->r:Lcom/shabakaty/downloader/k1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ts4;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/l1;->r:Lcom/shabakaty/downloader/k1;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/k1;->i(Lcom/shabakaty/downloader/k1;Lcom/shabakaty/downloader/ts4;Z)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
