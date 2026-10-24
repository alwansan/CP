.class public abstract Lcom/shabakaty/downloader/kg2;
.super Lcom/shabakaty/downloader/cg2;
.source "LazyJavaStaticScope.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V

    return-void
.end method


# virtual methods
.method public n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public p()Lcom/shabakaty/downloader/ao3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s(Lcom/shabakaty/downloader/l72;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Ljava/util/List;)Lcom/shabakaty/downloader/cg2$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l72;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/sz4;",
            ">;)",
            "Lcom/shabakaty/downloader/cg2$a;"
        }
    .end annotation

    const-string p1, "returnType"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/cg2$a;

    sget-object v6, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/cg2$a;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p1
.end method
