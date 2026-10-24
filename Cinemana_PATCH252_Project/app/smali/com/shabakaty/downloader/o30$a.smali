.class public Lcom/shabakaty/downloader/o30$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/o30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/ch6;

.field public final e:Lcom/shabakaty/downloader/jl6;

.field public f:Z

.field public final synthetic g:Lcom/shabakaty/downloader/o30;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o30;[BLcom/shabakaty/downloader/cd5;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/o30$a;->g:Lcom/shabakaty/downloader/o30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p3, p1, Lcom/shabakaty/downloader/o30;->e:I

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/o30$a;->a:I

    .line 4
    iget-object p3, p1, Lcom/shabakaty/downloader/o30;->d:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/o30$a;->b:Ljava/lang/String;

    .line 6
    iget-object p3, p1, Lcom/shabakaty/downloader/o30;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/o30$a;->c:Ljava/lang/String;

    .line 8
    iget-object p3, p1, Lcom/shabakaty/downloader/o30;->h:Lcom/shabakaty/downloader/ch6;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/o30$a;->d:Lcom/shabakaty/downloader/ch6;

    new-instance p3, Lcom/shabakaty/downloader/jl6;

    invoke-direct {p3}, Lcom/shabakaty/downloader/jl6;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/o30$a;->e:Lcom/shabakaty/downloader/jl6;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/o30$a;->f:Z

    .line 10
    iget-object v1, p1, Lcom/shabakaty/downloader/o30;->f:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/o30$a;->c:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/o30;->a:Landroid/content/Context;

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/ie5;->a:Landroid/os/UserManager;

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 15
    sget-boolean v2, Lcom/shabakaty/downloader/ie5;->b:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/shabakaty/downloader/ie5;->a:Landroid/os/UserManager;

    if-nez v2, :cond_3

    const-class v4, Lcom/shabakaty/downloader/ie5;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/ie5;->a:Landroid/os/UserManager;

    if-nez v2, :cond_2

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    sput-object v1, Lcom/shabakaty/downloader/ie5;->a:Landroid/os/UserManager;

    if-nez v1, :cond_1

    sput-boolean v3, Lcom/shabakaty/downloader/ie5;->b:Z

    monitor-exit v4

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    sput-boolean v2, Lcom/shabakaty/downloader/ie5;->b:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    sput-object v1, Lcom/shabakaty/downloader/ie5;->a:Landroid/os/UserManager;

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 16
    :cond_5
    iput-boolean v0, p3, Lcom/shabakaty/downloader/jl6;->J:Z

    .line 17
    iget-object v0, p1, Lcom/shabakaty/downloader/o30;->j:Lcom/shabakaty/downloader/x30;

    .line 18
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iput-wide v0, p3, Lcom/shabakaty/downloader/jl6;->t:J

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/o30;->j:Lcom/shabakaty/downloader/x30;

    .line 22
    check-cast p1, Lcom/shabakaty/downloader/mn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iput-wide v0, p3, Lcom/shabakaty/downloader/jl6;->u:J

    iget-wide v0, p3, Lcom/shabakaty/downloader/jl6;->t:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p3, Lcom/shabakaty/downloader/jl6;->D:J

    if-eqz p2, :cond_6

    iput-object p2, p3, Lcom/shabakaty/downloader/jl6;->y:[B

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/shabakaty/downloader/o30$a;->f:Z

    if-nez v0, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/shabakaty/downloader/o30$a;->f:Z

    new-instance v10, Lcom/shabakaty/downloader/m56;

    new-instance v4, Lcom/shabakaty/downloader/qd7;

    iget-object v0, v1, Lcom/shabakaty/downloader/o30$a;->g:Lcom/shabakaty/downloader/o30;

    .line 1
    iget-object v12, v0, Lcom/shabakaty/downloader/o30;->b:Ljava/lang/String;

    .line 2
    iget v13, v0, Lcom/shabakaty/downloader/o30;->c:I

    .line 3
    iget v14, v1, Lcom/shabakaty/downloader/o30$a;->a:I

    iget-object v15, v1, Lcom/shabakaty/downloader/o30$a;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/shabakaty/downloader/o30$a;->c:Ljava/lang/String;

    const/16 v17, 0x0

    .line 4
    iget-boolean v0, v0, Lcom/shabakaty/downloader/o30;->g:Z

    .line 5
    iget-object v5, v1, Lcom/shabakaty/downloader/o30$a;->d:Lcom/shabakaty/downloader/ch6;

    move-object v11, v4

    move-object/from16 v16, v3

    move/from16 v18, v0

    move-object/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lcom/shabakaty/downloader/qd7;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ch6;)V

    iget-object v5, v1, Lcom/shabakaty/downloader/o30$a;->e:Lcom/shabakaty/downloader/jl6;

    const/4 v6, 0x0

    sget-object v0, Lcom/shabakaty/downloader/o30;->m:Lcom/google/android/gms/common/api/a;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    move-object v7, v11

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/m56;-><init>(Lcom/shabakaty/downloader/qd7;Lcom/shabakaty/downloader/jl6;Lcom/shabakaty/downloader/o30$c;[I[IZ)V

    iget-object v0, v1, Lcom/shabakaty/downloader/o30$a;->g:Lcom/shabakaty/downloader/o30;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/o30;->l:Lcom/shabakaty/downloader/o30$b;

    .line 7
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/ia7;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v10, Lcom/shabakaty/downloader/m56;->r:Lcom/shabakaty/downloader/qd7;

    iget-object v4, v0, Lcom/shabakaty/downloader/qd7;->x:Ljava/lang/String;

    iget v0, v0, Lcom/shabakaty/downloader/qd7;->t:I

    sget-object v5, Lcom/shabakaty/downloader/ia7;->i:Lcom/shabakaty/downloader/rf5;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/rf5;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_10

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v11

    :goto_0
    if-eqz v4, :cond_18

    iget-object v0, v3, Lcom/shabakaty/downloader/ia7;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/shabakaty/downloader/ia7;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ia7;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/rf5;

    if-nez v5, :cond_3

    sget-object v5, Lcom/shabakaty/downloader/ia7;->d:Lcom/shabakaty/downloader/wi5;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v8, Lcom/shabakaty/downloader/rf5;->g:Ljava/lang/Object;

    .line 10
    new-instance v8, Lcom/shabakaty/downloader/rh5;

    invoke-direct {v8, v5, v4, v11}, Lcom/shabakaty/downloader/rh5;-><init>(Lcom/shabakaty/downloader/wi5;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v8

    :cond_3
    invoke-virtual {v5}, Lcom/shabakaty/downloader/rf5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v4, v11

    :goto_2
    if-nez v4, :cond_5

    goto/16 :goto_9

    :cond_5
    const/16 v0, 0x2c

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v2

    goto :goto_3

    :cond_6
    const-string v5, ""

    const/4 v0, 0x0

    :goto_3
    const/16 v8, 0x2f

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const-string v9, "LogSamplerImpl"

    if-gtz v8, :cond_8

    const-string v0, "Failed to parse the rule: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_7

    :cond_8
    :try_start_0
    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-ltz v0, :cond_e

    cmp-long v0, v14, v16

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/shabakaty/downloader/xj6$b;->v()Lcom/shabakaty/downloader/xj6$b$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5$a;->e()V

    iget-object v4, v0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    check-cast v4, Lcom/shabakaty/downloader/xj6$b;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/xj6$b;->k(Lcom/shabakaty/downloader/xj6$b;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5$a;->e()V

    iget-object v4, v0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    check-cast v4, Lcom/shabakaty/downloader/xj6$b;

    invoke-static {v4, v12, v13}, Lcom/shabakaty/downloader/xj6$b;->j(Lcom/shabakaty/downloader/xj6$b;J)V

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5$a;->e()V

    iget-object v4, v0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    check-cast v4, Lcom/shabakaty/downloader/xj6$b;

    invoke-static {v4, v14, v15}, Lcom/shabakaty/downloader/xj6$b;->l(Lcom/shabakaty/downloader/xj6$b;J)V

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5$a;->f()Lcom/shabakaty/downloader/y26;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    invoke-virtual {v0, v2, v11, v11}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    if-nez v4, :cond_b

    goto :goto_5

    .line 17
    :cond_b
    sget-object v4, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 18
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/shabakaty/downloader/o66;->d(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v4, v0

    goto :goto_4

    :cond_c
    move-object v4, v11

    :goto_4
    invoke-virtual {v0, v6, v4, v11}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v7, :cond_d

    .line 19
    check-cast v0, Lcom/shabakaty/downloader/xj6$b;

    goto :goto_a

    .line 20
    :cond_d
    new-instance v0, Lcom/shabakaty/downloader/u97;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    throw v0

    :cond_e
    :goto_6
    const/16 v0, 0x48

    const-string v4, "negative values not supported: "

    const-string v5, "/"

    .line 21
    invoke-static {v0, v4, v12, v13, v5}, Lcom/shabakaty/downloader/af;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v5, "parseLong() failed while parsing: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    move-object v0, v11

    :goto_a
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xj6$b;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/shabakaty/downloader/ia7;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/shabakaty/downloader/ia7;->d(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/ia7;->a(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xj6$b;->t()J

    move-result-wide v14

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xj6$b;->u()J

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/downloader/ia7;->b(JJJ)Z

    move-result v2

    goto/16 :goto_e

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_b

    :cond_11
    if-ltz v0, :cond_12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_12
    move-object v4, v11

    :goto_b
    if-eqz v4, :cond_18

    iget-object v0, v3, Lcom/shabakaty/downloader/ia7;->a:Landroid/content/Context;

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_13
    sget-object v0, Lcom/shabakaty/downloader/ia7;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/rf5;

    if-nez v5, :cond_15

    sget-object v5, Lcom/shabakaty/downloader/ia7;->c:Lcom/shabakaty/downloader/wi5;

    invoke-static {}, Lcom/shabakaty/downloader/xj6;->j()Lcom/shabakaty/downloader/xj6;

    move-result-object v7

    sget-object v8, Lcom/shabakaty/downloader/rc7;->a:Lcom/shabakaty/downloader/pi5;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v9, Lcom/shabakaty/downloader/rf5;->g:Ljava/lang/Object;

    .line 24
    new-instance v9, Lcom/shabakaty/downloader/zh5;

    invoke-direct {v9, v5, v4, v7, v8}, Lcom/shabakaty/downloader/zh5;-><init>(Lcom/shabakaty/downloader/wi5;Ljava/lang/String;Ljava/lang/Object;Lcom/shabakaty/downloader/pi5;)V

    .line 25
    invoke-virtual {v0, v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/rf5;

    if-eqz v5, :cond_14

    goto :goto_c

    :cond_14
    move-object v5, v9

    :cond_15
    :goto_c
    invoke-virtual {v5}, Lcom/shabakaty/downloader/rf5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xj6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xj6;->i()Ljava/util/List;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/xj6$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->m()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->i()I

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->i()I

    move-result v5

    if-nez v5, :cond_16

    :cond_17
    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->p()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lcom/shabakaty/downloader/ia7;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/shabakaty/downloader/ia7;->d(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/shabakaty/downloader/ia7;->a(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->t()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/shabakaty/downloader/xj6$b;->u()J

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/downloader/ia7;->b(JJJ)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v2, 0x0

    :cond_18
    :goto_e
    if-eqz v2, :cond_19

    .line 26
    iget-object v0, v1, Lcom/shabakaty/downloader/o30$a;->g:Lcom/shabakaty/downloader/o30;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/o30;->i:Lcom/shabakaty/downloader/vm5;

    .line 28
    check-cast v0, Lcom/shabakaty/downloader/v46;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Lcom/shabakaty/downloader/cl6;

    .line 30
    iget-object v3, v0, Lcom/google/android/gms/common/api/b;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 31
    invoke-direct {v2, v10, v3}, Lcom/shabakaty/downloader/cl6;-><init>(Lcom/shabakaty/downloader/m56;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 32
    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/common/api/b;->b(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    return-void

    .line 33
    :cond_19
    sget-object v0, Lcom/google/android/gms/common/api/Status;->w:Lcom/google/android/gms/common/api/Status;

    const-string v2, "Result must not be null"

    .line 34
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Lcom/shabakaty/downloader/bd4;

    invoke-direct {v2, v11}, Lcom/shabakaty/downloader/bd4;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    return-void

    .line 37
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "do not reuse LogEventBuilder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
