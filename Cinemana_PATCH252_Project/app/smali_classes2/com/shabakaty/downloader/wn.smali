.class public final Lcom/shabakaty/downloader/wn;
.super Ljava/lang/Object;
.source "BridgeInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ge0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ge0;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wn;->a:Lcom/shabakaty/downloader/ge0;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chain"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/vr3$a;-><init>(Lcom/shabakaty/downloader/vr3;)V

    .line 4
    iget-object v4, v2, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    const-string v5, "Content-Type"

    const-wide/16 v6, -0x1

    const-string v8, "Content-Length"

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/yr3;->b()Lcom/shabakaty/downloader/fr2;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 6
    iget-object v9, v9, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, v5, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 8
    :cond_0
    invoke-virtual {v4}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v9

    const-string v4, "Transfer-Encoding"

    cmp-long v11, v9, v6

    if-eqz v11, :cond_1

    .line 9
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 10
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    goto :goto_0

    :cond_1
    const-string v9, "chunked"

    .line 11
    invoke-virtual {v3, v4, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 12
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :cond_2
    :goto_0
    const-string v4, "Host"

    .line 13
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    .line 14
    iget-object v9, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 15
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/ry4;->w(Lcom/shabakaty/downloader/qw1;Z)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v3, v4, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :cond_3
    const-string v4, "Connection"

    .line 17
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "Keep-Alive"

    .line 18
    invoke-virtual {v3, v4, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :cond_4
    const-string v4, "Accept-Encoding"

    .line 19
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "gzip"

    const/4 v12, 0x1

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 20
    invoke-virtual {v3, v4, v11}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 21
    :goto_1
    iget-object v9, v0, Lcom/shabakaty/downloader/wn;->a:Lcom/shabakaty/downloader/ge0;

    .line 22
    iget-object v13, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 23
    invoke-interface {v9, v13}, Lcom/shabakaty/downloader/ge0;->a(Lcom/shabakaty/downloader/qw1;)Ljava/util/List;

    move-result-object v9

    .line 24
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v12

    const/4 v14, 0x0

    if-eqz v13, :cond_9

    .line 25
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v10, 0x1

    if-ltz v10, :cond_7

    check-cast v15, Lcom/shabakaty/downloader/ee0;

    if-lez v10, :cond_6

    const-string v10, "; "

    .line 27
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_6
    iget-object v10, v15, Lcom/shabakaty/downloader/ee0;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    iget-object v10, v15, Lcom/shabakaty/downloader/ee0;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v16

    goto :goto_2

    .line 32
    :cond_7
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v14

    .line 33
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Cookie"

    .line 34
    invoke-virtual {v3, v10, v9}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :cond_9
    const-string v9, "User-Agent"

    .line 35
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    const-string v10, "okhttp/4.9.2"

    .line 36
    invoke-virtual {v3, v9, v10}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 37
    :cond_a
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v1

    .line 38
    iget-object v3, v0, Lcom/shabakaty/downloader/wn;->a:Lcom/shabakaty/downloader/ge0;

    .line 39
    iget-object v9, v2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 40
    iget-object v10, v1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 41
    invoke-static {v3, v9, v10}, Lcom/shabakaty/downloader/jw1;->b(Lcom/shabakaty/downloader/ge0;Lcom/shabakaty/downloader/qw1;Lcom/shabakaty/downloader/ts1;)V

    .line 42
    new-instance v3, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/ws3$a;-><init>(Lcom/shabakaty/downloader/ws3;)V

    .line 43
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    if-eqz v4, :cond_b

    const-string v2, "Content-Encoding"

    const/4 v4, 0x2

    .line 44
    invoke-static {v1, v2, v14, v4}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v12}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 45
    invoke-static {v1}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 46
    iget-object v9, v1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v9, :cond_b

    .line 47
    new-instance v10, Lcom/shabakaty/downloader/rr1;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/shabakaty/downloader/rr1;-><init>(Lcom/shabakaty/downloader/r94;)V

    .line 48
    iget-object v9, v1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 49
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v9

    .line 50
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 51
    invoke-virtual {v9, v8}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 52
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v2

    .line 53
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ws3$a;->e(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/ws3$a;

    .line 54
    invoke-static {v1, v5, v14, v4}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/shabakaty/downloader/wn3;

    invoke-static {v10}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object v4

    invoke-direct {v2, v1, v6, v7, v4}, Lcom/shabakaty/downloader/wn3;-><init>(Ljava/lang/String;JLcom/shabakaty/downloader/eo;)V

    .line 56
    iput-object v2, v3, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 57
    :cond_b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v1

    return-object v1
.end method
