.class public final Lcom/shabakaty/downloader/n37;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/n37;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/n37;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    array-length v1, v1

    const v2, 0x7fffffff

    if-ltz v1, :cond_1

    sub-int/2addr v0, v0

    add-int/2addr v0, v1

    if-gt v0, v2, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/i47;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i47;-><init>(Ljava/lang/String;)V

    .line 6
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/i47;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i47;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/i47; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/shabakaty/downloader/d77;

    invoke-interface {p0}, Lcom/shabakaty/downloader/d77;->c()Lcom/shabakaty/downloader/b77;

    move-result-object p0

    check-cast p1, Lcom/shabakaty/downloader/d77;

    check-cast p0, Lcom/shabakaty/downloader/dz6;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/b37$b;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->r:Lcom/shabakaty/downloader/b37;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/yy6;

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/b37;

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/b37$b;->i(Lcom/shabakaty/downloader/b37;)Lcom/shabakaty/downloader/b37$b;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b37$b;->k()Lcom/shabakaty/downloader/d77;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method
