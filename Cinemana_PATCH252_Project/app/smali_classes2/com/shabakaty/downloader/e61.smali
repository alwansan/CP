.class public final Lcom/shabakaty/downloader/e61;
.super Ljava/lang/Object;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e61$a;,
        Lcom/shabakaty/downloader/e61$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lcom/shabakaty/downloader/tn3;

.field public final c:Lcom/shabakaty/downloader/pn3;

.field public final d:Lcom/shabakaty/downloader/o51;

.field public final e:Lcom/shabakaty/downloader/g61;

.field public final f:Lcom/shabakaty/downloader/f61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/o51;Lcom/shabakaty/downloader/g61;Lcom/shabakaty/downloader/f61;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    iput-object p2, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iput-object p3, p0, Lcom/shabakaty/downloader/e61;->e:Lcom/shabakaty/downloader/g61;

    iput-object p4, p0, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    .line 2
    invoke-interface {p4}, Lcom/shabakaty/downloader/f61;->g()Lcom/shabakaty/downloader/tn3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    :cond_0
    const-string p1, "call"

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {p2, v0, p5}, Lcom/shabakaty/downloader/o51;->b(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {p1, p2, p5}, Lcom/shabakaty/downloader/o51;->c(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {p1, p0, p4, p3, p5}, Lcom/shabakaty/downloader/pn3;->h(Lcom/shabakaty/downloader/e61;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/shabakaty/downloader/vr3;Z)Lcom/shabakaty/downloader/l84;
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/shabakaty/downloader/e61;->a:Z

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v0

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v2, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "call"

    .line 5
    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {p2, p1, v0, v1}, Lcom/shabakaty/downloader/f61;->b(Lcom/shabakaty/downloader/vr3;J)Lcom/shabakaty/downloader/l84;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/e61$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/shabakaty/downloader/e61$a;-><init>(Lcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/l84;J)V

    return-object p2
.end method

.method public final c(Z)Lcom/shabakaty/downloader/ws3$a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/f61;->f(Z)Lcom/shabakaty/downloader/ws3$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "deferredTrailers"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p0, p1, Lcom/shabakaty/downloader/ws3$a;->m:Lcom/shabakaty/downloader/e61;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v1, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/o51;->c(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    .line 6
    throw p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v1, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call"

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->e:Lcom/shabakaty/downloader/g61;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g61;->c(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v0}, Lcom/shabakaty/downloader/f61;->g()Lcom/shabakaty/downloader/tn3;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    .line 3
    monitor-enter v0

    :try_start_0
    const-string v2, "call"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v2, p1, Lcom/shabakaty/downloader/wd4;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/wd4;

    iget-object v2, v2, Lcom/shabakaty/downloader/wd4;->r:Lcom/shabakaty/downloader/s41;

    sget-object v4, Lcom/shabakaty/downloader/s41;->w:Lcom/shabakaty/downloader/s41;

    if-ne v2, v4, :cond_0

    .line 6
    iget p1, v0, Lcom/shabakaty/downloader/tn3;->m:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tn3;->m:I

    if-le p1, v3, :cond_4

    .line 7
    iput-boolean v3, v0, Lcom/shabakaty/downloader/tn3;->i:Z

    .line 8
    iget p1, v0, Lcom/shabakaty/downloader/tn3;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tn3;->k:I

    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/wd4;

    iget-object p1, p1, Lcom/shabakaty/downloader/wd4;->r:Lcom/shabakaty/downloader/s41;

    sget-object v2, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;

    if-ne p1, v2, :cond_1

    .line 10
    iget-boolean p1, v1, Lcom/shabakaty/downloader/pn3;->D:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v3, v0, Lcom/shabakaty/downloader/tn3;->i:Z

    .line 12
    iget p1, v0, Lcom/shabakaty/downloader/tn3;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tn3;->k:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tn3;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/shabakaty/downloader/hb0;

    if-eqz v2, :cond_4

    .line 14
    :cond_3
    iput-boolean v3, v0, Lcom/shabakaty/downloader/tn3;->i:Z

    .line 15
    iget v2, v0, Lcom/shabakaty/downloader/tn3;->l:I

    if-nez v2, :cond_4

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/tn3;->e(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/ju3;Ljava/io/IOException;)V

    .line 18
    iget p1, v0, Lcom/shabakaty/downloader/tn3;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tn3;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
