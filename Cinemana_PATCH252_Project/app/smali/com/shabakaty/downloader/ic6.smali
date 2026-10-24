.class public final Lcom/shabakaty/downloader/ic6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# direct methods
.method public static a(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/wn5;Lcom/shabakaty/downloader/wn5;)Lcom/shabakaty/downloader/nb3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/shabakaty/downloader/ft3;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TT;>;",
            "Lcom/shabakaty/downloader/wn5<",
            "TR;TT;>;",
            "Lcom/shabakaty/downloader/wn5<",
            "TR;",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/shabakaty/downloader/nb3<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bo5;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/bo5;-><init>(Lcom/shabakaty/downloader/wn5;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yh1;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/bo5;Lcom/shabakaty/downloader/wn5;)V

    check-cast p0, Lcom/shabakaty/downloader/ye7;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/ye7;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/qz2;

    invoke-direct {v1, v0, p2}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/bo5;Lcom/shabakaty/downloader/wn5;)V

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/ye7;->b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;

    return-object v0
.end method

.method public static b(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_1
    return v1
.end method
