.class public final Lcom/shabakaty/downloader/e61$a;
.super Lcom/shabakaty/downloader/bi1;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public s:Z

.field public t:J

.field public u:Z

.field public final v:J

.field public final synthetic w:Lcom/shabakaty/downloader/e61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/l84;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l84;",
            "J)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e61$a;->w:Lcom/shabakaty/downloader/e61;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/bi1;-><init>(Lcom/shabakaty/downloader/l84;)V

    iput-wide p3, p0, Lcom/shabakaty/downloader/e61$a;->v:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$a;->s:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e61$a;->s:Z

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/e61$a;->w:Lcom/shabakaty/downloader/e61;

    iget-wide v2, p0, Lcom/shabakaty/downloader/e61$a;->t:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/e61;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$a;->u:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/e61$a;->v:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/shabakaty/downloader/e61$a;->t:J

    add-long/2addr v2, p2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/downloader/e61$a;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shabakaty/downloader/e61$a;->t:J

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/bi1;->b0(Lcom/shabakaty/downloader/zn;J)V

    .line 7
    iget-wide v0, p0, Lcom/shabakaty/downloader/e61$a;->t:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/shabakaty/downloader/e61$a;->t:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e61$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$a;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e61$a;->u:Z

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/e61$a;->v:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/e61$a;->t:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/shabakaty/downloader/bi1;->close()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e61$a;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e61$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/shabakaty/downloader/bi1;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e61$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
