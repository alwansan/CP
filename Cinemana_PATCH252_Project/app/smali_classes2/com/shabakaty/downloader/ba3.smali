.class public Lcom/shabakaty/downloader/ba3;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/da3<",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/da3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/da3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ba3;->a:Lcom/shabakaty/downloader/da3;

    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ba3;->a:Lcom/shabakaty/downloader/da3;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/da3;->a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
