.class public abstract Lcom/shabakaty/downloader/yy6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/d77;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/yy6<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/dz6<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/d77;"
    }
.end annotation


# instance fields
.field public zzbmy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/yy6;->zzbmy:I

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final g()Lcom/shabakaty/downloader/i07;
    .locals 7

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/b37;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37;->e()I

    move-result v1

    sget-object v2, Lcom/shabakaty/downloader/i07;->s:Lcom/shabakaty/downloader/i07;

    .line 2
    new-array v2, v1, [B

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/e17;->b:Ljava/util/logging/Logger;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/e17$a;

    invoke-direct {v3, v2, v1}, Lcom/shabakaty/downloader/e17$a;-><init>([BI)V

    .line 5
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/b37;->b(Lcom/shabakaty/downloader/e17;)V

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/e17;->J()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/a17;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/a17;-><init>([B)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    add-int/lit8 v4, v4, 0xa

    const-string v5, "Serializing "

    const-string v6, " to a "

    invoke-static {v4, v5, v3, v6, v2}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
