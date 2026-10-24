.class public Lcom/shabakaty/downloader/ws3$a;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ws3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/vr3;

.field public b:Lcom/shabakaty/downloader/mj3;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/shabakaty/downloader/is1;

.field public f:Lcom/shabakaty/downloader/ts1$a;

.field public g:Lcom/shabakaty/downloader/ys3;

.field public h:Lcom/shabakaty/downloader/ws3;

.field public i:Lcom/shabakaty/downloader/ws3;

.field public j:Lcom/shabakaty/downloader/ws3;

.field public k:J

.field public l:J

.field public m:Lcom/shabakaty/downloader/e61;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ts1$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->f:Lcom/shabakaty/downloader/ts1$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ws3;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->a:Lcom/shabakaty/downloader/vr3;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->b:Lcom/shabakaty/downloader/mj3;

    .line 10
    iget v0, p1, Lcom/shabakaty/downloader/ws3;->v:I

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->d:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->e:Lcom/shabakaty/downloader/is1;

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->f:Lcom/shabakaty/downloader/ts1$a;

    .line 18
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 19
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 21
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->h:Lcom/shabakaty/downloader/ws3;

    .line 22
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 23
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->i:Lcom/shabakaty/downloader/ws3;

    .line 24
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    .line 25
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->j:Lcom/shabakaty/downloader/ws3;

    .line 26
    iget-wide v0, p1, Lcom/shabakaty/downloader/ws3;->C:J

    .line 27
    iput-wide v0, p0, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 28
    iget-wide v0, p1, Lcom/shabakaty/downloader/ws3;->D:J

    .line 29
    iput-wide v0, p0, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    .line 31
    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->m:Lcom/shabakaty/downloader/e61;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/ws3;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v5, v0, Lcom/shabakaty/downloader/ws3$a;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/ws3$a;->a:Lcom/shabakaty/downloader/vr3;

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/ws3$a;->b:Lcom/shabakaty/downloader/mj3;

    if-eqz v3, :cond_2

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/ws3$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    iget-object v6, v0, Lcom/shabakaty/downloader/ws3$a;->e:Lcom/shabakaty/downloader/is1;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3$a;->f:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v7

    .line 7
    iget-object v8, v0, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 8
    iget-object v9, v0, Lcom/shabakaty/downloader/ws3$a;->h:Lcom/shabakaty/downloader/ws3;

    .line 9
    iget-object v10, v0, Lcom/shabakaty/downloader/ws3$a;->i:Lcom/shabakaty/downloader/ws3;

    .line 10
    iget-object v11, v0, Lcom/shabakaty/downloader/ws3$a;->j:Lcom/shabakaty/downloader/ws3;

    .line 11
    iget-wide v12, v0, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 12
    iget-wide v14, v0, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3$a;->m:Lcom/shabakaty/downloader/e61;

    .line 14
    new-instance v17, Lcom/shabakaty/downloader/ws3;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    return-object v17

    .line 15
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "code < 0: "

    .line 18
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/shabakaty/downloader/ws3$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/ws3$a;
    .locals 1

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ws3$a;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ws3;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->i:Lcom/shabakaty/downloader/ws3;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lcom/shabakaty/downloader/ws3;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p2, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p2, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    if-nez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, ".priorResponse != null"

    .line 5
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p2, ".cacheResponse != null"

    .line 6
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p2, ".networkResponse != null"

    .line 7
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p2, ".body != null"

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3$a;->f:Lcom/shabakaty/downloader/ts1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ts1;->s:Lcom/shabakaty/downloader/ts1$b;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ts1$b;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p2, p1}, Lcom/shabakaty/downloader/ts1$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ts1$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->f:Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->b:Lcom/shabakaty/downloader/mj3;

    return-object p0
.end method

.method public h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ws3$a;->a:Lcom/shabakaty/downloader/vr3;

    return-object p0
.end method
