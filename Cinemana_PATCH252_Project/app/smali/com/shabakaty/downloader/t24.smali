.class public Lcom/shabakaty/downloader/t24;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/x24;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/k34;

.field public final c:Lcom/shabakaty/downloader/fq1;

.field public final d:Lcom/shabakaty/downloader/zl2;

.field public final e:Lcom/shabakaty/downloader/sm6;

.field public final f:Lcom/shabakaty/downloader/tk1;

.field public final g:Lcom/shabakaty/downloader/jl0;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/r24;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/zk4<",
            "Lcom/shabakaty/downloader/hb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/k34;Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/fq1;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/jl0;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Lcom/shabakaty/downloader/t24;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v4}, Lcom/shabakaty/downloader/zk4;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->i:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->a:Landroid/content/Context;

    move-object v3, p2

    .line 5
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->b:Lcom/shabakaty/downloader/k34;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/t24;->d:Lcom/shabakaty/downloader/zl2;

    move-object/from16 v3, p4

    .line 7
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->c:Lcom/shabakaty/downloader/fq1;

    move-object/from16 v3, p5

    .line 8
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->e:Lcom/shabakaty/downloader/sm6;

    move-object/from16 v3, p6

    .line 9
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->f:Lcom/shabakaty/downloader/tk1;

    move-object/from16 v3, p7

    .line 10
    iput-object v3, v0, Lcom/shabakaty/downloader/t24;->g:Lcom/shabakaty/downloader/jl0;

    .line 11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "max_custom_exception_events"

    const/16 v5, 0x8

    .line 12
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    new-instance v9, Lcom/shabakaty/downloader/c24;

    const/4 v5, 0x4

    invoke-direct {v9, v4, v5}, Lcom/shabakaty/downloader/c24;-><init>(II)V

    .line 14
    invoke-static {v3}, Lcom/shabakaty/downloader/kd;->b(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/ja1;

    move-result-object v10

    const-wide/16 v4, 0xe10

    .line 15
    invoke-static {v1, v4, v5, v3}, Lcom/shabakaty/downloader/kd;->e(Lcom/shabakaty/downloader/zl2;JLorg/json/JSONObject;)J

    move-result-wide v6

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/w24;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe10

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/shabakaty/downloader/w24;-><init>(JLcom/shabakaty/downloader/hb;Lcom/shabakaty/downloader/c24;Lcom/shabakaty/downloader/ja1;II)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/shabakaty/downloader/w24;
    .locals 8

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/su;->j(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/t24;->e:Lcom/shabakaty/downloader/sm6;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/sm6;->d()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 3
    iget-object v5, p0, Lcom/shabakaty/downloader/t24;->c:Lcom/shabakaty/downloader/fq1;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/fq1;->Y0(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/w24;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "Loaded cached settings: "

    .line 4
    invoke-virtual {p0, v3, v6}, Lcom/shabakaty/downloader/t24;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/t24;->d:Lcom/shabakaty/downloader/zl2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7
    invoke-static {v4, p1}, Lcom/shabakaty/downloader/su;->j(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-wide v3, v5, Lcom/shabakaty/downloader/w24;->d:J

    cmp-long p1, v3, v6

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Cached settings have expired."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "Returning cached settings."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v2, v5

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v5

    goto :goto_2

    :cond_4
    :try_start_2
    const-string p1, "Failed to parse cached settings data."

    .line 13
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    const-string p1, "No cached settings data found."

    .line 14
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "Failed to get cached settings"

    .line 16
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-object v2
.end method

.method public b()Lcom/shabakaty/downloader/r24;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t24;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/r24;

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "FirebaseCrashlytics"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
