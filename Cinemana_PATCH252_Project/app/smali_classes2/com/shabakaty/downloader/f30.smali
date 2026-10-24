.class public abstract Lcom/shabakaty/downloader/f30;
.super Ljava/lang/Object;
.source "ClassifierBasedTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ts4;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/shabakaty/downloader/g30;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/ts4;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/f30;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/shabakaty/downloader/ts4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f30;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f30;->g(Lcom/shabakaty/downloader/g30;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/f30;->g(Lcom/shabakaty/downloader/g30;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/f30;->h(Lcom/shabakaty/downloader/g30;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public final g(Lcom/shabakaty/downloader/g30;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->t(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract h(Lcom/shabakaty/downloader/g30;)Z
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/f30;->a:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f30;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f30;->g(Lcom/shabakaty/downloader/g30;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 6
    :goto_0
    iput v0, p0, Lcom/shabakaty/downloader/f30;->a:I

    return v0
.end method
