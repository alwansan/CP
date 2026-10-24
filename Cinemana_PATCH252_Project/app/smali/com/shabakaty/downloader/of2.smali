.class public Lcom/shabakaty/downloader/of2;
.super Lcom/shabakaty/downloader/qf2;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/of2$c;,
        Lcom/shabakaty/downloader/of2$b;
    }
.end annotation


# virtual methods
.method public c()Lcom/shabakaty/downloader/ds2;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qf2;->a(Lcom/shabakaty/downloader/ds2;)Lcom/shabakaty/downloader/ds2;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/of2;->c()Lcom/shabakaty/downloader/ds2;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/of2;->c()Lcom/shabakaty/downloader/ds2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/of2;->c()Lcom/shabakaty/downloader/ds2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
