.class public abstract Lcom/shabakaty/downloader/z83;
.super Ljava/lang/Object;
.source "OverridingStrategy.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/shabakaty/downloader/tq;)V
.end method

.method public abstract b(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V
.end method

.method public c(Lcom/shabakaty/downloader/tq;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tq;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/tq;",
            ">;)V"
        }
    .end annotation

    const-string v0, "member"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overridden"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/tq;->I0(Ljava/util/Collection;)V

    return-void
.end method
