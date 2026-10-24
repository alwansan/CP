.class public Lcom/onesignal/f0;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/np4;

.field public final c:Lcom/onesignal/j0;


# direct methods
.method public constructor <init>(Lcom/onesignal/j0;Lcom/shabakaty/downloader/np4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onesignal/f0;->c:Lcom/onesignal/j0;

    .line 3
    iput-object p2, p0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 4
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/f0;->a:Ljava/util/Set;

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/t33;->h()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/onesignal/f0;->a:Ljava/util/Set;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "OneSignal cleanOutcomes for session"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/f0;->a:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/f0;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/t33;->c(Ljava/util/Set;)V

    return-void
.end method

.method public final b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;",
            "Lcom/onesignal/q0$w;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v3, p4

    .line 1
    sget-object v0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    .line 4
    div-long v4, v0, v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.amazon.device.messaging.ADM"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    const/4 v8, 0x2

    goto :goto_5

    .line 6
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    .line 7
    :cond_1
    invoke-static {}, Lcom/onesignal/o0;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-static {}, Lcom/onesignal/o0;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/onesignal/o0;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {}, Lcom/onesignal/o0;->p()Z

    move-result v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x0

    :goto_3
    const/16 v8, 0xd

    if-eqz v2, :cond_5

    goto :goto_5

    .line 10
    :cond_5
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    const-string v2, "com.huawei.hwid"

    .line 11
    invoke-static {v2}, Lcom/onesignal/o0;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    const/4 v8, 0x1

    .line 12
    :goto_5
    sget-object v9, Lcom/onesignal/q0;->d:Ljava/lang/String;

    .line 13
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x7

    if-eqz v12, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/v23;

    .line 14
    iget-object v14, v12, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 15
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/16 v15, 0x10

    if-eqz v14, :cond_d

    if-eq v14, v1, :cond_b

    if-eq v14, v6, :cond_a

    const/4 v15, 0x3

    if-eq v14, v15, :cond_8

    goto :goto_6

    :cond_8
    const-string v0, "Outcomes disabled for channel: "

    .line 16
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    iget-object v1, v12, Lcom/shabakaty/downloader/v23;->b:Lcom/shabakaty/downloader/w23;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-static {v13, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_9

    .line 20
    invoke-interface {v3, v1}, Lcom/onesignal/q0$w;->a(Lcom/shabakaty/downloader/m33;)V

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    if-nez v11, :cond_c

    .line 21
    new-instance v11, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v11, v15, v13}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    :cond_c
    invoke-virtual {v7, v12, v11}, Lcom/onesignal/f0;->c(Lcom/shabakaty/downloader/v23;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/ag6;

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    if-nez v10, :cond_e

    .line 22
    new-instance v10, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v10, v15, v13}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    :cond_e
    invoke-virtual {v7, v12, v10}, Lcom/onesignal/f0;->c(Lcom/shabakaty/downloader/v23;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/ag6;

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    if-nez v10, :cond_11

    if-nez v11, :cond_11

    if-nez v0, :cond_11

    const-string v0, "Outcomes disabled for all channels"

    .line 23
    invoke-static {v13, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_10

    .line 24
    invoke-interface {v3, v1}, Lcom/onesignal/q0$w;->a(Lcom/shabakaty/downloader/m33;)V

    :cond_10
    return-void

    .line 25
    :cond_11
    new-instance v0, Lcom/shabakaty/downloader/z33;

    invoke-direct {v0, v10, v11}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    .line 26
    new-instance v10, Lcom/shabakaty/downloader/n33;

    const-wide/16 v18, 0x0

    move-object v14, v10

    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move/from16 v17, p2

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/n33;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z33;FJ)V

    .line 27
    new-instance v11, Lcom/onesignal/f0$a;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p4

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/onesignal/f0$a;-><init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;Lcom/onesignal/q0$w;JLjava/lang/String;)V

    .line 28
    iget-object v0, v7, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    invoke-interface {v0, v9, v8, v10, v11}, Lcom/shabakaty/downloader/t33;->d(Ljava/lang/String;ILcom/shabakaty/downloader/n33;Lcom/shabakaty/downloader/m73;)V

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/v23;Lcom/shabakaty/downloader/ag6;)Lcom/shabakaty/downloader/ag6;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/v23;->b:Lcom/shabakaty/downloader/w23;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 4
    iput-object p1, p2, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 6
    iput-object p1, p2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    :goto_0
    return-object p2
.end method
