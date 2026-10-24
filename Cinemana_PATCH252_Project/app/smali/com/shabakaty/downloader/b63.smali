.class public Lcom/shabakaty/downloader/b63;
.super Lcom/shabakaty/downloader/fj;
.source "OkHttpDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/fw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b63$b;
    }
.end annotation


# instance fields
.field public final e:Lcom/shabakaty/downloader/mq$a;

.field public final f:Lcom/shabakaty/downloader/fw1$f;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/shabakaty/downloader/qp;

.field public final i:Lcom/shabakaty/downloader/fw1$f;

.field public j:Lcom/shabakaty/downloader/ze3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ze3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/downloader/yl0;

.field public l:Lcom/shabakaty/downloader/ws3;

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public o:J

.field public p:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.okhttp"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/mq$a;Ljava/lang/String;Lcom/shabakaty/downloader/qp;Lcom/shabakaty/downloader/fw1$f;Lcom/shabakaty/downloader/ze3;Lcom/shabakaty/downloader/b63$a;)V
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/fj;-><init>(Z)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/b63;->e:Lcom/shabakaty/downloader/mq$a;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/b63;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/b63;->h:Lcom/shabakaty/downloader/qp;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/b63;->i:Lcom/shabakaty/downloader/fw1$f;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/b63;->j:Lcom/shabakaty/downloader/ze3;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/fw1$f;

    invoke-direct {p1}, Lcom/shabakaty/downloader/fw1$f;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b63;->f:Lcom/shabakaty/downloader/fw1$f;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1
    iput-object v7, v1, Lcom/shabakaty/downloader/b63;->k:Lcom/shabakaty/downloader/yl0;

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v1, Lcom/shabakaty/downloader/b63;->p:J

    .line 3
    iput-wide v2, v1, Lcom/shabakaty/downloader/b63;->o:J

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->v(Lcom/shabakaty/downloader/yl0;)V

    .line 5
    iget-wide v4, v7, Lcom/shabakaty/downloader/yl0;->f:J

    .line 6
    iget-wide v8, v7, Lcom/shabakaty/downloader/yl0;->g:J

    .line 7
    iget-object v0, v7, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/qw1;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1;

    move-result-object v0

    const/4 v6, 0x1

    if-eqz v0, :cond_12

    .line 8
    new-instance v10, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v10}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/vr3$a;->j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;

    .line 9
    iget-object v0, v1, Lcom/shabakaty/downloader/b63;->h:Lcom/shabakaty/downloader/qp;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/vr3$a;->c(Lcom/shabakaty/downloader/qp;)Lcom/shabakaty/downloader/vr3$a;

    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v11, v1, Lcom/shabakaty/downloader/b63;->i:Lcom/shabakaty/downloader/fw1$f;

    if-eqz v11, :cond_1

    .line 13
    invoke-virtual {v11}, Lcom/shabakaty/downloader/fw1$f;->a()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_1
    iget-object v11, v1, Lcom/shabakaty/downloader/b63;->f:Lcom/shabakaty/downloader/fw1$f;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/fw1$f;->a()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    iget-object v11, v7, Lcom/shabakaty/downloader/yl0;->e:Ljava/util/Map;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v4, v5, v8, v9}, Lcom/shabakaty/downloader/rw1;->a(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "Range"

    .line 19
    invoke-virtual {v10, v4, v0}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 20
    :cond_3
    iget-object v0, v1, Lcom/shabakaty/downloader/b63;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v4, "User-Agent"

    .line 21
    invoke-virtual {v10, v4, v0}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 22
    :cond_4
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/yl0;->c(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Accept-Encoding"

    const-string v4, "identity"

    .line 23
    invoke-virtual {v10, v0, v4}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 24
    :cond_5
    iget-object v0, v7, Lcom/shabakaty/downloader/yl0;->d:[B

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 25
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/yr3;->d(Lcom/shabakaty/downloader/fr2;[B)Lcom/shabakaty/downloader/yr3;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_6
    iget v0, v7, Lcom/shabakaty/downloader/yl0;->c:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/sy4;->f:[B

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/yr3;->d(Lcom/shabakaty/downloader/fr2;[B)Lcom/shabakaty/downloader/yr3;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v4

    .line 28
    :goto_1
    iget v5, v7, Lcom/shabakaty/downloader/yl0;->c:I

    invoke-static {v5}, Lcom/shabakaty/downloader/yl0;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v10, v5, v0}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 30
    invoke-virtual {v10}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    .line 31
    :try_start_0
    iget-object v5, v1, Lcom/shabakaty/downloader/b63;->e:Lcom/shabakaty/downloader/mq$a;

    invoke-interface {v5, v0}, Lcom/shabakaty/downloader/mq$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/b63;->l:Lcom/shabakaty/downloader/ws3;

    .line 32
    iget-object v5, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 33
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->a()Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, v1, Lcom/shabakaty/downloader/b63;->m:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 35
    iget v8, v0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3;->c()Z

    move-result v9

    const-wide/16 v10, -0x1

    if-nez v9, :cond_b

    const/16 v5, 0x1a0

    if-ne v8, v5, :cond_9

    .line 37
    iget-object v9, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    const-string v12, "Content-Range"

    .line 38
    invoke-virtual {v9, v12}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/downloader/rw1;->b(Ljava/lang/String;)J

    move-result-wide v12

    .line 39
    iget-wide v14, v7, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v9, v14, v12

    if-nez v9, :cond_9

    .line 40
    iput-boolean v6, v1, Lcom/shabakaty/downloader/b63;->n:Z

    .line 41
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->w(Lcom/shabakaty/downloader/yl0;)V

    .line 42
    iget-wide v4, v7, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v0, v4, v10

    if-eqz v0, :cond_8

    move-wide v2, v4

    :cond_8
    return-wide v2

    .line 43
    :cond_9
    :try_start_1
    iget-object v2, v1, Lcom/shabakaty/downloader/b63;->m:Ljava/io/InputStream;

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v2}, Lcom/shabakaty/downloader/sy4;->T(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 46
    :catch_0
    sget-object v2, Lcom/shabakaty/downloader/sy4;->f:[B

    :goto_2
    move-object v9, v2

    .line 47
    iget-object v2, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 48
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1;->m()Ljava/util/Map;

    move-result-object v6

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/b63;->x()V

    if-ne v8, v5, :cond_a

    .line 50
    new-instance v2, Lcom/shabakaty/downloader/wl0;

    const/16 v3, 0x7d8

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/wl0;-><init>(I)V

    move-object v5, v2

    goto :goto_3

    :cond_a
    move-object v5, v4

    .line 51
    :goto_3
    new-instance v10, Lcom/shabakaty/downloader/fw1$e;

    .line 52
    iget-object v4, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    move-object v2, v10

    move v3, v8

    move-object/from16 v7, p1

    move-object v8, v9

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/fw1$e;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/shabakaty/downloader/yl0;[B)V

    throw v10

    .line 54
    :cond_b
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, v0, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    goto :goto_4

    :cond_c
    const-string v0, ""

    .line 56
    :goto_4
    iget-object v4, v1, Lcom/shabakaty/downloader/b63;->j:Lcom/shabakaty/downloader/ze3;

    if-eqz v4, :cond_e

    invoke-interface {v4, v0}, Lcom/shabakaty/downloader/ze3;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    .line 57
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/b63;->x()V

    .line 58
    new-instance v2, Lcom/shabakaty/downloader/fw1$d;

    invoke-direct {v2, v0, v7}, Lcom/shabakaty/downloader/fw1$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;)V

    throw v2

    :cond_e
    :goto_5
    const/16 v0, 0xc8

    if-ne v8, v0, :cond_f

    .line 59
    iget-wide v8, v7, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v0, v8, v2

    if-eqz v0, :cond_f

    move-wide v2, v8

    .line 60
    :cond_f
    iget-wide v8, v7, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_10

    .line 61
    iput-wide v8, v1, Lcom/shabakaty/downloader/b63;->o:J

    goto :goto_6

    .line 62
    :cond_10
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-eqz v0, :cond_11

    sub-long v10, v4, v2

    .line 63
    :cond_11
    iput-wide v10, v1, Lcom/shabakaty/downloader/b63;->o:J

    .line 64
    :goto_6
    iput-boolean v6, v1, Lcom/shabakaty/downloader/b63;->n:Z

    .line 65
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->w(Lcom/shabakaty/downloader/yl0;)V

    .line 66
    :try_start_2
    invoke-virtual {v1, v2, v3, v7}, Lcom/shabakaty/downloader/b63;->y(JLcom/shabakaty/downloader/yl0;)V
    :try_end_2
    .catch Lcom/shabakaty/downloader/fw1$c; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    iget-wide v2, v1, Lcom/shabakaty/downloader/b63;->o:J

    return-wide v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/b63;->x()V

    .line 69
    throw v2

    :catch_2
    move-exception v0

    .line 70
    invoke-static {v0, v7, v6}, Lcom/shabakaty/downloader/fw1$c;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;I)Lcom/shabakaty/downloader/fw1$c;

    move-result-object v0

    throw v0

    .line 71
    :cond_12
    new-instance v0, Lcom/shabakaty/downloader/fw1$c;

    const/16 v2, 0x3ec

    const-string v3, "Malformed URL"

    invoke-direct {v0, v3, v7, v2, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;II)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b63;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/b63;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b63;->x()V

    :cond_0
    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b63;->l:Lcom/shabakaty/downloader/ws3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1;->m()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b63;->l:Lcom/shabakaty/downloader/ws3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b63;->o:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/b63;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v2, p3

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b63;->m:Ljava/io/InputStream;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    :goto_1
    const/4 p1, -0x1

    goto :goto_2

    .line 5
    :cond_3
    iget-wide p2, p0, Lcom/shabakaty/downloader/b63;->p:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shabakaty/downloader/b63;->p:J

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fj;->t(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return p1

    .line 7
    :goto_3
    iget-object p2, p0, Lcom/shabakaty/downloader/b63;->k:Lcom/shabakaty/downloader/yl0;

    .line 8
    sget p3, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 p3, 0x2

    .line 9
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/fw1$c;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;I)Lcom/shabakaty/downloader/fw1$c;

    move-result-object p1

    throw p1
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b63;->l:Lcom/shabakaty/downloader/ws3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/b63;->l:Lcom/shabakaty/downloader/ws3;

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/shabakaty/downloader/b63;->m:Ljava/io/InputStream;

    return-void
.end method

.method public final y(JLcom/shabakaty/downloader/yl0;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    int-to-long v4, v2

    const/4 v6, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/b63;->m:Ljava/io/InputStream;

    sget v7, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v7, v4

    sub-long/2addr p1, v7

    .line 4
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/fj;->t(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Lcom/shabakaty/downloader/yl0;II)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    instance-of p2, p1, Lcom/shabakaty/downloader/fw1$c;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/fw1$c;

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    const/16 p2, 0x7d0

    invoke-direct {p1, p3, p2, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Lcom/shabakaty/downloader/yl0;II)V

    throw p1

    :cond_4
    return-void
.end method
