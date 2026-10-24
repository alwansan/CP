.class public abstract Lcom/shabakaty/downloader/dp;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dp$c;,
        Lcom/shabakaty/downloader/dp$f;,
        Lcom/shabakaty/downloader/dp$e;,
        Lcom/shabakaty/downloader/dp$a;,
        Lcom/shabakaty/downloader/dp$b;,
        Lcom/shabakaty/downloader/dp$g;,
        Lcom/shabakaty/downloader/dp$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/dp;

.field public static final t:Lcom/shabakaty/downloader/dp$d;


# instance fields
.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dp$f;

    sget-object v1, Lcom/shabakaty/downloader/x22;->b:[B

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dp$f;-><init>([B)V

    sput-object v0, Lcom/shabakaty/downloader/dp;->s:Lcom/shabakaty/downloader/dp;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/w6;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/dp$g;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dp$g;-><init>(Lcom/shabakaty/downloader/cp;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/dp$b;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dp$b;-><init>(Lcom/shabakaty/downloader/cp;)V

    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/dp;->t:Lcom/shabakaty/downloader/dp$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/dp;->r:I

    return-void
.end method

.method public static h(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p2, p0, v0}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract d(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dp;->r:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dp;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lcom/shabakaty/downloader/dp;->m(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lcom/shabakaty/downloader/dp;->r:I

    :cond_1
    return v0
.end method

.method public abstract i(I)B
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cp;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cp;-><init>(Lcom/shabakaty/downloader/dp;)V

    return-object v0
.end method

.method public abstract l()Z
.end method

.method public abstract m(III)I
.end method

.method public abstract n(II)Lcom/shabakaty/downloader/dp;
.end method

.method public abstract p(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract q(Lcom/shabakaty/downloader/kz6;)V
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dp;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dp;->size()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lcom/shabakaty/downloader/wl4;->a(Lcom/shabakaty/downloader/dp;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/dp;->n(II)Lcom/shabakaty/downloader/dp;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/wl4;->a(Lcom/shabakaty/downloader/dp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
