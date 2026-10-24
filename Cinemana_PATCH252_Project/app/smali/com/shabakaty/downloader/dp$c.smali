.class public final Lcom/shabakaty/downloader/dp$c;
.super Lcom/shabakaty/downloader/dp$f;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final v:I

.field public final w:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dp$f;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/shabakaty/downloader/dp;->h(III)I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/dp$c;->v:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/dp$c;->w:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(I)B
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dp$c;->w:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index < 0: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Index > length: "

    const-string v3, ", "

    invoke-static {v2, p1, v3, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dp$f;->u:[B

    iget v1, p0, Lcom/shabakaty/downloader/dp$c;->v:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public i(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dp$f;->u:[B

    iget v1, p0, Lcom/shabakaty/downloader/dp$c;->v:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dp$c;->v:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dp$c;->w:I

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dp$c;->w:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/x22;->b:[B

    goto :goto_0

    .line 3
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/dp$f;->u:[B

    .line 5
    iget v4, p0, Lcom/shabakaty/downloader/dp$c;->v:I

    add-int/2addr v4, v2

    .line 6
    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 7
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/dp$f;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dp$f;-><init>([B)V

    return-object v1
.end method
