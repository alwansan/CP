.class public final Lcom/shabakaty/downloader/e55;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e55$b;,
        Lcom/shabakaty/downloader/e55$c;,
        Lcom/shabakaty/downloader/e55$a;
    }
.end annotation


# direct methods
.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static b(Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/e55$a;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shabakaty/downloader/e55;->c(ILcom/shabakaty/downloader/ka3;Z)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->j()J

    move-result-wide v1

    long-to-int p1, v1

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->j()J

    move-result-wide v2

    long-to-int v4, v2

    .line 6
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    int-to-long v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->j()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v1, v1, 0x4

    .line 8
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 9
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    .line 11
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 12
    new-instance p0, Lcom/shabakaty/downloader/e55$a;

    invoke-direct {p0, p1, v4, v1}, Lcom/shabakaty/downloader/e55$a;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static c(ILcom/shabakaty/downloader/ka3;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p0

    const/16 p1, 0x1d

    const-string p2, "too short header: "

    invoke-static {p1, p2, p0, v2}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    .line 3
    throw p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    :cond_2
    const-string p1, "expected header type "

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    :cond_7
    const-string p0, "expected characters \'vorbis\'"

    .line 13
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0
.end method
