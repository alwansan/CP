.class public final Lcom/shabakaty/downloader/qq;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shabakaty/downloader/qq;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "call"

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/vn3;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/vn3;->e:Lcom/shabakaty/downloader/e61;

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vn3;->f:Lcom/shabakaty/downloader/vr3;

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    :try_start_0
    iget-object v6, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v7, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v6, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/f61;->c(Lcom/shabakaty/downloader/vr3;)V

    .line 10
    iget-object v6, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v7, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 12
    iget-object v6, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 13
    invoke-static {v6}, Lcom/shabakaty/downloader/nw1;->a(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    const-string v6, "Expect"

    .line 14
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "100-continue"

    invoke-static {v10, v6, v9}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 15
    :try_start_1
    iget-object v6, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v6}, Lcom/shabakaty/downloader/f61;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/e61;->c(Z)Lcom/shabakaty/downloader/ws3$a;

    move-result-object v6

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/e61;->d()V

    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v4, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    .line 21
    throw v0

    :cond_0
    const/4 v10, 0x1

    move-object v6, v7

    :goto_0
    if-nez v6, :cond_1

    .line 22
    invoke-virtual {v2, v0, v8}, Lcom/shabakaty/downloader/e61;->b(Lcom/shabakaty/downloader/vr3;Z)Lcom/shabakaty/downloader/l84;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v7

    .line 23
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/yr3;->e(Lcom/shabakaty/downloader/do;)V

    .line 24
    check-cast v7, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn3;->close()V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v3, v2, v9, v8, v7}, Lcom/shabakaty/downloader/pn3;->h(Lcom/shabakaty/downloader/e61;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 26
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/tn3;->k()Z

    move-result v3

    if-nez v3, :cond_2

    .line 28
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v3}, Lcom/shabakaty/downloader/f61;->g()Lcom/shabakaty/downloader/tn3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/tn3;->m()V

    :cond_2
    :goto_1
    move-object v7, v6

    goto :goto_2

    .line 29
    :cond_3
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v3, v2, v9, v8, v7}, Lcom/shabakaty/downloader/pn3;->h(Lcom/shabakaty/downloader/e61;ZZLjava/io/IOException;)Ljava/io/IOException;

    const/4 v10, 0x1

    .line 30
    :goto_2
    :try_start_2
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v3}, Lcom/shabakaty/downloader/f61;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_4

    .line 31
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/e61;->c(Z)Lcom/shabakaty/downloader/ws3$a;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    .line 32
    invoke-virtual {v2}, Lcom/shabakaty/downloader/e61;->d()V

    const/4 v10, 0x0

    .line 33
    :cond_4
    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 34
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    .line 35
    iget-object v3, v3, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    .line 36
    iput-object v3, v7, Lcom/shabakaty/downloader/ws3$a;->e:Lcom/shabakaty/downloader/is1;

    .line 37
    iput-wide v4, v7, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 39
    iput-wide v11, v7, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 40
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    .line 41
    iget v6, v3, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_6

    .line 42
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/e61;->c(Z)Lcom/shabakaty/downloader/ws3$a;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    if-eqz v10, :cond_5

    .line 43
    invoke-virtual {v2}, Lcom/shabakaty/downloader/e61;->d()V

    .line 44
    :cond_5
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 45
    iget-object v0, v2, Lcom/shabakaty/downloader/e61;->b:Lcom/shabakaty/downloader/tn3;

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->d:Lcom/shabakaty/downloader/is1;

    .line 47
    iput-object v0, v3, Lcom/shabakaty/downloader/ws3$a;->e:Lcom/shabakaty/downloader/is1;

    .line 48
    iput-wide v4, v3, Lcom/shabakaty/downloader/ws3$a;->k:J

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    iput-wide v4, v3, Lcom/shabakaty/downloader/ws3$a;->l:J

    .line 51
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object v3

    .line 52
    iget v6, v3, Lcom/shabakaty/downloader/ws3;->v:I

    .line 53
    :cond_6
    iget-object v0, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v4, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p0

    .line 55
    iget-boolean v0, v4, Lcom/shabakaty/downloader/qq;->a:Z

    const-string v5, "message == null"

    const-string v7, "protocol == null"

    const-string v8, "request == null"

    const-string v9, "code < 0: "

    if-eqz v0, :cond_c

    const/16 v0, 0x65

    if-ne v6, v0, :cond_c

    .line 56
    iget-object v11, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 57
    iget-object v12, v3, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 58
    iget v14, v3, Lcom/shabakaty/downloader/ws3;->v:I

    .line 59
    iget-object v13, v3, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 60
    iget-object v15, v3, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 61
    iget-object v0, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 62
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v0

    .line 63
    iget-object v1, v3, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 64
    iget-object v10, v3, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 65
    iget-object v4, v3, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    move-object/from16 p1, v8

    move-object/from16 v16, v9

    .line 66
    iget-wide v8, v3, Lcom/shabakaty/downloader/ws3;->C:J

    move/from16 v26, v6

    move-object/from16 v17, v7

    .line 67
    iget-wide v6, v3, Lcom/shabakaty/downloader/ws3;->D:J

    .line 68
    iget-object v3, v3, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    .line 69
    sget-object v18, Lcom/shabakaty/downloader/ry4;->c:Lcom/shabakaty/downloader/ys3;

    if-ltz v14, :cond_7

    const/16 v19, 0x1

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    :goto_3
    if-eqz v19, :cond_b

    if-eqz v11, :cond_a

    if-eqz v12, :cond_9

    if-eqz v13, :cond_8

    .line 70
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v16

    .line 71
    new-instance v0, Lcom/shabakaty/downloader/ws3;

    move-object v5, v10

    move-object v10, v0

    move-object/from16 v17, v18

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    goto/16 :goto_5

    .line 72
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v0, v16

    .line 75
    invoke-static {v0, v14}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move/from16 v26, v6

    move-object/from16 v17, v7

    move-object/from16 p1, v8

    move-object v0, v9

    .line 76
    iget-object v4, v3, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 77
    iget-object v6, v3, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 78
    iget v7, v3, Lcom/shabakaty/downloader/ws3;->v:I

    .line 79
    iget-object v8, v3, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 80
    iget-object v9, v3, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 81
    iget-object v10, v3, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 82
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v10

    .line 83
    iget-object v11, v3, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 84
    iget-object v12, v3, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 85
    iget-object v13, v3, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    .line 86
    iget-wide v14, v3, Lcom/shabakaty/downloader/ws3;->C:J

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    .line 87
    iget-wide v0, v3, Lcom/shabakaty/downloader/ws3;->D:J

    move-wide/from16 v19, v0

    .line 88
    iget-object v0, v3, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    :try_start_3
    const-string v1, "Content-Type"

    move-object/from16 v21, v5

    const/4 v5, 0x0

    move-object/from16 v22, v0

    const/4 v0, 0x2

    .line 89
    invoke-static {v3, v1, v5, v0}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    move-wide/from16 v23, v14

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/f61;->d(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v14

    .line 91
    iget-object v1, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/f61;->e(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/r94;

    move-result-object v1

    .line 92
    new-instance v3, Lcom/shabakaty/downloader/e61$b;

    invoke-direct {v3, v2, v1, v14, v15}, Lcom/shabakaty/downloader/e61$b;-><init>(Lcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/r94;J)V

    .line 93
    new-instance v1, Lcom/shabakaty/downloader/wn3;

    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object v3

    invoke-direct {v1, v0, v14, v15, v3}, Lcom/shabakaty/downloader/wn3;-><init>(Ljava/lang/String;JLcom/shabakaty/downloader/eo;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-ltz v7, :cond_d

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_17

    if-eqz v4, :cond_16

    if-eqz v6, :cond_15

    if-eqz v8, :cond_14

    .line 94
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v0

    .line 95
    new-instance v21, Lcom/shabakaty/downloader/ws3;

    move-object/from16 v3, v21

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v0

    move-object v10, v1

    move-wide/from16 v14, v23

    move-wide/from16 v16, v19

    move-object/from16 v18, v22

    invoke-direct/range {v3 .. v18}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    move-object/from16 v0, v21

    .line 96
    :goto_5
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    const-string v3, "Connection"

    .line 97
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/vr3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x2

    const/4 v6, 0x0

    .line 98
    invoke-static {v0, v3, v6, v1}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    .line 99
    :goto_6
    iget-object v1, v2, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v1}, Lcom/shabakaty/downloader/f61;->g()Lcom/shabakaty/downloader/tn3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tn3;->m()V

    :cond_f
    const/16 v1, 0xcc

    move/from16 v2, v26

    if-eq v2, v1, :cond_10

    const/16 v1, 0xcd

    if-ne v2, v1, :cond_13

    .line 100
    :cond_10
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v1, :cond_11

    .line 101
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v3

    goto :goto_7

    :cond_11
    const-wide/16 v3, -0x1

    :goto_7
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-lez v1, :cond_13

    .line 102
    new-instance v1, Ljava/net/ProtocolException;

    const-string v3, "HTTP "

    const-string v4, " had non-zero Content-Length: "

    .line 103
    invoke-static {v3, v2, v4}, Lcom/shabakaty/downloader/lh4;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_12

    .line 105
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_12
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    return-object v0

    .line 107
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v0, v18

    .line 110
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 111
    iget-object v1, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    .line 112
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    .line 114
    throw v0

    :catch_2
    move-exception v0

    .line 115
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v4, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    .line 118
    throw v0

    :catch_3
    move-exception v0

    .line 119
    iget-object v3, v2, Lcom/shabakaty/downloader/e61;->d:Lcom/shabakaty/downloader/o51;

    iget-object v4, v2, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/e61;->e(Ljava/io/IOException;)V

    .line 122
    throw v0
.end method
