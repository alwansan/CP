.class public abstract Lcom/shabakaty/downloader/q0;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/shabakaty/downloader/na3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/shabakaty/downloader/es2;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/na3<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t81;->b:Lcom/shabakaty/downloader/t81;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/fs2;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/j0;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/j0;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/u97;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/u97;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    .line 6
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/s32;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p1, v1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 8
    throw v1

    :cond_1
    return-object p1
.end method

.method public c(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_3

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x7

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v1, :cond_3

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 3
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/s32;->d()Lcom/shabakaty/downloader/s32;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_7

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v1, :cond_6

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    .line 5
    :goto_2
    new-instance v1, Lcom/shabakaty/downloader/j0$a$a;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/j0$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/q0;->d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object p1

    .line 7
    :goto_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/q0;->b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 8
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/shabakaty/downloader/s32;->d()Lcom/shabakaty/downloader/s32;

    move-result-object p1

    throw p1

    .line 9
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/s32;

    const-string p2, "CodedInputStream encountered a malformed varint."

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/shabakaty/downloader/t81;",
            ")TMessageType;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u40;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/u40;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/shabakaty/downloader/na3;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/es2;

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/u40;->a(I)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 4
    iput-object p1, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 5
    throw p2
.end method
