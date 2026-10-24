.class public final Lcom/shabakaty/downloader/ov1$c;
.super Lcom/shabakaty/downloader/ov1$a;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ov1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public u:J

.field public v:Z

.field public final w:Lcom/shabakaty/downloader/qw1;

.field public final synthetic x:Lcom/shabakaty/downloader/ov1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ov1;Lcom/shabakaty/downloader/qw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw1;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ov1$a;-><init>(Lcom/shabakaty/downloader/ov1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ov1$c;->w:Lcom/shabakaty/downloader/qw1;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ov1$c;->v:Z

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_c

    .line 1
    iget-boolean v4, p0, Lcom/shabakaty/downloader/ov1$a;->s:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_b

    .line 2
    iget-boolean v4, p0, Lcom/shabakaty/downloader/ov1$c;->v:Z

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    return-wide v5

    .line 3
    :cond_1
    iget-wide v7, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_2

    cmp-long v4, v7, v5

    if-nez v4, :cond_7

    :cond_2
    cmp-long v4, v7, v5

    if-eqz v4, :cond_3

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 5
    iget-object v4, v4, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    .line 6
    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    .line 7
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    .line 9
    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->y1()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    .line 12
    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    iget-wide v7, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    cmp-long v9, v7, v2

    if-ltz v9, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    const-string v0, ";"

    const/4 v7, 0x2

    invoke-static {v4, v0, v1, v7}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    .line 14
    :cond_5
    iget-wide v7, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 15
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ov1$c;->v:Z

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/ov1;->b:Lcom/shabakaty/downloader/vs1;

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vs1;->a()Lcom/shabakaty/downloader/ts1;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/shabakaty/downloader/ov1;->c:Lcom/shabakaty/downloader/ts1;

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/ov1;->d:Lcom/shabakaty/downloader/a63;

    .line 22
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->A:Lcom/shabakaty/downloader/ge0;

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/ov1$c;->w:Lcom/shabakaty/downloader/qw1;

    iget-object v2, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/ov1;->c:Lcom/shabakaty/downloader/ts1;

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/jw1;->b(Lcom/shabakaty/downloader/ge0;Lcom/shabakaty/downloader/qw1;Lcom/shabakaty/downloader/ts1;)V

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov1$a;->a()V

    .line 28
    :cond_6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$c;->v:Z

    if-nez v0, :cond_7

    return-wide v5

    .line 29
    :cond_7
    iget-wide v0, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ov1$a;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_8

    .line 30
    iget-wide v0, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    return-wide p1

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 32
    iget-object p1, p1, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tn3;->m()V

    .line 34
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov1$a;->a()V

    .line 36
    throw p1

    .line 37
    :cond_9
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v0, p0, Lcom/shabakaty/downloader/ov1$c;->u:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "byteCount < 0: "

    .line 43
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$a;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$c;->v:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/ry4;->h(Lcom/shabakaty/downloader/r94;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$c;->x:Lcom/shabakaty/downloader/ov1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tn3;->m()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov1$a;->a()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ov1$a;->s:Z

    return-void
.end method
