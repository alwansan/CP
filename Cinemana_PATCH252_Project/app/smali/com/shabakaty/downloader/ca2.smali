.class public final Lcom/shabakaty/downloader/ca2;
.super Lcom/shabakaty/downloader/z92;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ci2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ci2<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/z92;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/z92;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ci2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ci2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ca2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/ca2;

    iget-object p1, p1, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ci2;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/ci2$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ci2$e;->x:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/z92;

    return-object p1
.end method
