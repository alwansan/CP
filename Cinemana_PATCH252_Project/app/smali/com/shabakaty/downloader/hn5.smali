.class public abstract Lcom/shabakaty/downloader/hn5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/hn5;

.field public static final t:Lcom/shabakaty/downloader/ho5;


# instance fields
.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/zo5;

    sget-object v1, Lcom/shabakaty/downloader/vv5;->b:[B

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zo5;-><init>([B)V

    sput-object v0, Lcom/shabakaty/downloader/hn5;->s:Lcom/shabakaty/downloader/hn5;

    invoke-static {}, Lcom/shabakaty/downloader/vk5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/16 v1, 0xc

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ll3;

    const/16 v1, 0x9

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    .line 4
    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/hn5;->t:Lcom/shabakaty/downloader/ho5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/hn5;->r:I

    return-void
.end method

.method public static m([BII)Lcom/shabakaty/downloader/hn5;
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/zo5;

    sget-object v1, Lcom/shabakaty/downloader/hn5;->t:Lcom/shabakaty/downloader/ho5;

    invoke-interface {v1, p0, p1, p2}, Lcom/shabakaty/downloader/ho5;->b([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/zo5;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract d(III)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract h(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/hn5;->r:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/shabakaty/downloader/hn5;->d(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/shabakaty/downloader/hn5;->r:I

    :cond_1
    return v0
.end method

.method public abstract i(Lcom/shabakaty/downloader/cl4;)V
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/on5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/on5;-><init>(Lcom/shabakaty/downloader/hn5;)V

    return-object v0
.end method

.method public abstract l()Z
.end method

.method public abstract n(I)B
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
