.class public abstract Lcom/shabakaty/downloader/wj5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/y26;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/wj5<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/fk5<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/y26;"
    }
.end annotation


# static fields
.field private static zzey:Z


# instance fields
.field public zzex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/wj5;->zzex:I

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final n()Lcom/shabakaty/downloader/hn5;
    .locals 7

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5;->s()I

    move-result v1

    sget-object v2, Lcom/shabakaty/downloader/hn5;->s:Lcom/shabakaty/downloader/hn5;

    .line 1
    new-array v2, v1, [B

    sget-object v3, Lcom/shabakaty/downloader/zp5;->t:Ljava/util/logging/Logger;

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/zp5$a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lcom/shabakaty/downloader/zp5$a;-><init>([BII)V

    .line 3
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/kv5;->q(Lcom/shabakaty/downloader/zp5;)V

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/zp5;->v()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/zo5;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/zo5;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

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

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
