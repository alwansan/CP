.class public final Lcom/shabakaty/downloader/aq;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "chain"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 6
    iget v6, v0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 8
    iget-object v7, v0, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v2

    .line 11
    iget-object v9, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 12
    iget-object v10, v0, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 13
    iget-object v11, v0, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 14
    iget-object v12, v0, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    .line 15
    iget-wide v13, v0, Lcom/shabakaty/downloader/ws3;->C:J

    move-wide v15, v13

    .line 16
    iget-wide v13, v0, Lcom/shabakaty/downloader/ws3;->D:J

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    const-string v8, "pragma"

    .line 18
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    const-string v8, "Cache-Control"

    .line 19
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 20
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3;->a()Lcom/shabakaty/downloader/qp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qp;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v2, v8, v1}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    if-ltz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v8

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/ws3;

    move-object v2, v1

    move-wide/from16 v17, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    return-object v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "code < 0: "

    .line 27
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
