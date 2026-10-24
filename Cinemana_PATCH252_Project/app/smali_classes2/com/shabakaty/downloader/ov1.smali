.class public final Lcom/shabakaty/downloader/ov1;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/shabakaty/downloader/f61;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ov1$e;,
        Lcom/shabakaty/downloader/ov1$b;,
        Lcom/shabakaty/downloader/ov1$a;,
        Lcom/shabakaty/downloader/ov1$d;,
        Lcom/shabakaty/downloader/ov1$c;,
        Lcom/shabakaty/downloader/ov1$f;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/shabakaty/downloader/vs1;

.field public c:Lcom/shabakaty/downloader/ts1;

.field public final d:Lcom/shabakaty/downloader/a63;

.field public final e:Lcom/shabakaty/downloader/tn3;

.field public final f:Lcom/shabakaty/downloader/eo;

.field public final g:Lcom/shabakaty/downloader/do;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/tn3;Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ov1;->d:Lcom/shabakaty/downloader/a63;

    iput-object p2, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    iput-object p3, p0, Lcom/shabakaty/downloader/ov1;->f:Lcom/shabakaty/downloader/eo;

    iput-object p4, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/vs1;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/vs1;-><init>(Lcom/shabakaty/downloader/eo;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ov1;->b:Lcom/shabakaty/downloader/vs1;

    return-void
.end method

.method public static final i(Lcom/shabakaty/downloader/ov1;Lcom/shabakaty/downloader/ei1;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/on4;->d:Lcom/shabakaty/downloader/on4;

    const-string v1, "delegate"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/on4;->a()Lcom/shabakaty/downloader/on4;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/on4;->b()Lcom/shabakaty/downloader/on4;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->flush()V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/vr3;J)Lcom/shabakaty/downloader/l84;
    .locals 5

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x2

    const-string v2, "state: "

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ov1$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ov1$b;-><init>(Lcom/shabakaty/downloader/ov1;)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    .line 6
    iget p1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ov1$e;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ov1$e;-><init>(Lcom/shabakaty/downloader/ov1;)V

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/shabakaty/downloader/vr3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->b:Ljava/net/Proxy;

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v2, p1, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 10
    iget-boolean v3, v2, Lcom/shabakaty/downloader/qw1;->a:Z

    if-nez v3, :cond_0

    .line 11
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qw1;->b()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qw1;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ov1;->k(Lcom/shabakaty/downloader/ts1;Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ws3;)J
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/ry4;->k(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/r94;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/ov1;->j(J)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ov1$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ov1$c;-><init>(Lcom/shabakaty/downloader/ov1;Lcom/shabakaty/downloader/qw1;)V

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/ry4;->k(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v5, v6}, Lcom/shabakaty/downloader/ov1;->j(J)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    iget p1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 12
    iput v2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tn3;->m()V

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/ov1$f;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ov1$f;-><init>(Lcom/shabakaty/downloader/ov1;)V

    :goto_2
    return-object p1

    .line 16
    :cond_6
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Z)Lcom/shabakaty/downloader/ws3$a;
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->b:Lcom/shabakaty/downloader/vs1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vs1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zc4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/zc4;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/zc4;->a:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    .line 5
    iget v3, v0, Lcom/shabakaty/downloader/zc4;->b:I

    .line 6
    iput v3, v2, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/zc4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/ov1;->b:Lcom/shabakaty/downloader/vs1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/vs1;->a()Lcom/shabakaty/downloader/ts1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ws3$a;->e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lcom/shabakaty/downloader/zc4;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 10
    :cond_2
    iget p1, v0, Lcom/shabakaty/downloader/zc4;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/ov1;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/ov1;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qw1;->i()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const-string p1, "state: "

    .line 19
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/shabakaty/downloader/tn3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->e:Lcom/shabakaty/downloader/tn3;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->flush()V

    return-void
.end method

.method public final j(J)Lcom/shabakaty/downloader/r94;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ov1$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/ov1$d;-><init>(Lcom/shabakaty/downloader/ov1;J)V

    return-object v0

    :cond_1
    const-string p1, "state: "

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Lcom/shabakaty/downloader/ts1;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ov1;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v3

    const-string v4, ": "

    .line 5
    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 9
    iput v2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    return-void

    :cond_2
    const-string p1, "state: "

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/shabakaty/downloader/ov1;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
