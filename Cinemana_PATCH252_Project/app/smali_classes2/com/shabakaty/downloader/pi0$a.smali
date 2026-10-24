.class public Lcom/shabakaty/downloader/pi0$a;
.super Ljava/io/ByteArrayOutputStream;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/pi0;

.field public final s:I


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/pi0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/pi0$a;->s:I

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/pi0;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    .line 6
    iput p3, p0, Lcom/shabakaty/downloader/pi0$a;->s:I

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 2
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    :cond_0
    :goto_0
    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-gtz v0, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    iget-object v3, v3, Lcom/shabakaty/downloader/pi0;->h:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shr-int/lit8 v0, p1, 0x8

    or-int/lit16 v0, v0, 0xc0

    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    return-void

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    iget-object v3, v3, Lcom/shabakaty/downloader/pi0;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget v5, p0, Lcom/shabakaty/downloader/pi0$a;->s:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/shabakaty/downloader/pi0$a;->f(Ljava/lang/String;II)V

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public c(Lcom/shabakaty/downloader/qi0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi0$a;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/ti0;->r:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/shabakaty/downloader/si0;->r:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ri0;J)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi0$a;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/ti0;->r:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v0

    .line 6
    iget v0, v0, Lcom/shabakaty/downloader/si0;->r:I

    .line 7
    iget-boolean v1, p1, Lcom/shabakaty/downloader/li0;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    .line 9
    iget-boolean v1, v1, Lcom/shabakaty/downloader/oi0;->b:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 10
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    if-nez v3, :cond_1

    .line 11
    iget p2, p1, Lcom/shabakaty/downloader/ri0;->h:I

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ri0;->t(J)I

    move-result p2

    :goto_1
    shr-int/lit8 p3, p2, 0x10

    .line 13
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    .line 14
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    .line 15
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/pi0$a;

    const/16 p3, 0x200

    iget-object v0, p0, Lcom/shabakaty/downloader/pi0$a;->r:Lcom/shabakaty/downloader/pi0;

    iget v1, p0, Lcom/shabakaty/downloader/pi0$a;->s:I

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p2, p3, v0, v3}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;I)V

    .line 17
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ri0;->A(Lcom/shabakaty/downloader/pi0$a;)V

    .line 18
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 19
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 20
    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public e(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-ge v1, p3, :cond_2

    add-int v6, p2, v1

    .line 1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_0

    if-gt v6, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-le v6, v4, :cond_1

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v2, 0xff

    .line 2
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    if-ge v0, p3, :cond_5

    add-int v1, p2, v0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_3

    if-gt v1, v3, :cond_3

    and-int/lit16 v1, v1, 0xff

    .line 4
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_3
    if-le v1, v4, :cond_4

    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    and-int/lit16 v2, v2, 0xff

    .line 5
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    and-int/lit16 v2, v2, 0xff

    .line 6
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    and-int/lit16 v1, v1, 0xff

    .line 7
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_4
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    and-int/lit16 v2, v2, 0xff

    .line 8
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    and-int/lit16 v1, v1, 0xff

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
