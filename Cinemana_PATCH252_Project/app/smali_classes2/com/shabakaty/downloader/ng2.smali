.class public Lcom/shabakaty/downloader/ng2;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/kf2<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qj4;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/shabakaty/downloader/qj4;-><init>(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static final b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/a;",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/kf2<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/fw4;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/fw4;-><init>(Lcom/shabakaty/downloader/rm1;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Lcom/shabakaty/downloader/ww3;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ww3;-><init>(Lcom/shabakaty/downloader/rm1;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Lcom/shabakaty/downloader/qj4;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/shabakaty/downloader/qj4;-><init>(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;I)V

    :goto_0
    return-object p0
.end method
