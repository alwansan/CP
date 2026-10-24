.class public final Lcom/shabakaty/downloader/e61$b;
.super Lcom/shabakaty/downloader/ci1;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public s:J

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:J

.field public final synthetic x:Lcom/shabakaty/downloader/e61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/r94;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r94;",
            "J)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e61$b;->x:Lcom/shabakaty/downloader/e61;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ci1;-><init>(Lcom/shabakaty/downloader/r94;)V

    iput-wide p3, p0, Lcom/shabakaty/downloader/e61$b;->w:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/e61$b;->t:Z

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->v:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ci1;->r:Lcom/shabakaty/downloader/r94;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p1

    .line 4
    iget-boolean p3, p0, Lcom/shabakaty/downloader/e61$b;->t:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/shabakaty/downloader/e61$b;->t:Z

    .line 6
    iget-object p3, p0, Lcom/shabakaty/downloader/e61$b;->x:Lcom/shabakaty/downloader/e61;

    .line 7
    iget-object v0, p3, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    .line 8
    iget-object p3, p3, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call"

    .line 10
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v0

    .line 12
    :cond_1
    iget-wide v2, p0, Lcom/shabakaty/downloader/e61$b;->s:J

    add-long/2addr v2, p1

    .line 13
    iget-wide v4, p0, Lcom/shabakaty/downloader/e61$b;->w:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/shabakaty/downloader/e61$b;->w:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    :goto_0
    iput-wide v2, p0, Lcom/shabakaty/downloader/e61$b;->s:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-wide p1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->u:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->u:Z

    if-nez p1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->t:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->t:Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/e61$b;->x:Lcom/shabakaty/downloader/e61;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "call"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/e61$b;->x:Lcom/shabakaty/downloader/e61;

    iget-wide v3, p0, Lcom/shabakaty/downloader/e61$b;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/e61;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e61$b;->v:Z

    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ci1;->close()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e61$b;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
