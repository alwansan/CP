.class public final Lcom/shabakaty/downloader/pi0;
.super Lcom/shabakaty/downloader/oi0;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pi0$a;
    }
.end annotation


# instance fields
.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public final j:Lcom/shabakaty/downloader/pi0$a;

.field public final k:Lcom/shabakaty/downloader/pi0$a;

.field public final l:Lcom/shabakaty/downloader/pi0$a;

.field public final m:Lcom/shabakaty/downloader/pi0$a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5b4

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/shabakaty/downloader/oi0;-><init>(IIZ)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pi0;->h:Ljava/util/Map;

    if-lez p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/16 p1, 0x5b4

    .line 4
    :goto_0
    iput p1, p0, Lcom/shabakaty/downloader/pi0;->i:I

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/pi0$a;

    invoke-direct {p1, p3, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pi0;->j:Lcom/shabakaty/downloader/pi0$a;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/pi0$a;

    invoke-direct {p1, p3, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pi0;->k:Lcom/shabakaty/downloader/pi0$a;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/pi0$a;

    invoke-direct {p1, p3, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pi0;->l:Lcom/shabakaty/downloader/pi0$a;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/pi0$a;

    invoke-direct {p1, p3, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pi0;->m:Lcom/shabakaty/downloader/pi0$a;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->a()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 3
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/ri0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Lcom/shabakaty/downloader/ri0;->h:I

    iget v4, p2, Lcom/shabakaty/downloader/ri0;->h:I

    div-int/lit8 v4, v4, 0x2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/ri0;->k:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suppressedBy() message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " exception "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    :cond_3
    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/pi0;->k(Lcom/shabakaty/downloader/ri0;J)V

    :cond_4
    return-void
.end method

.method public k(Lcom/shabakaty/downloader/ri0;J)V
    .locals 3

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ri0;->i(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/pi0$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/pi0$a;->d(Lcom/shabakaty/downloader/ri0;J)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 5
    array-length p3, p2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi0;->n()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 6
    iget-object p3, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/pi0;->k:Lcom/shabakaty/downloader/pi0$a;

    const/4 p3, 0x0

    array-length v0, p2

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "message full"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ri0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi0$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/shabakaty/downloader/pi0$a;->d(Lcom/shabakaty/downloader/ri0;J)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4
    array-length v1, v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi0;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/pi0;->l:Lcom/shabakaty/downloader/pi0$a;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/shabakaty/downloader/qi0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi0$a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pi0$a;->c(Lcom/shabakaty/downloader/qi0;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4
    array-length v1, v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi0;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/pi0;->j:Lcom/shabakaty/downloader/pi0$a;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/pi0;->i:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Lcom/shabakaty/downloader/pi0;->j:Lcom/shabakaty/downloader/pi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shabakaty/downloader/pi0;->k:Lcom/shabakaty/downloader/pi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shabakaty/downloader/pi0;->l:Lcom/shabakaty/downloader/pi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shabakaty/downloader/pi0;->m:Lcom/shabakaty/downloader/pi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query:"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " id=0x"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    if-eqz v1, :cond_5

    const-string v1, ", flags=0x"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, ":r"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    const-string v1, ":aa"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ":tc"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", questions="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", answers="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, ", authorities="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 24
    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, ", additionals="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_a

    const-string v1, "\nquestions:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi0;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nanswers:"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 37
    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "\nauthorities:"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    if-lez v1, :cond_d

    const-string v1, "\nadditionals:"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_d
    const-string v1, "\nnames="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    iget-object v1, p0, Lcom/shabakaty/downloader/pi0;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
