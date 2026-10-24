.class public final Lcom/shabakaty/downloader/kv5$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/eu5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/eu5<",
        "Lcom/shabakaty/downloader/kv5$d;",
        ">;"
    }
.end annotation


# virtual methods
.method public final A(Lcom/shabakaty/downloader/c36;Lcom/shabakaty/downloader/y26;)Lcom/shabakaty/downloader/c36;
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/kv5$a;

    check-cast p2, Lcom/shabakaty/downloader/kv5;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/kv5$a;->c(Lcom/shabakaty/downloader/kv5;)Lcom/shabakaty/downloader/kv5$a;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/kv5$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final k()Lcom/shabakaty/downloader/he6;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/shabakaty/downloader/id6;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w(Lcom/shabakaty/downloader/a46;Lcom/shabakaty/downloader/a46;)Lcom/shabakaty/downloader/a46;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
