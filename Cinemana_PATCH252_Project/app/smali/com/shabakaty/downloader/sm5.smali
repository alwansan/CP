.class public final Lcom/shabakaty/downloader/sm5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/wy1;

.field public c:Landroid/net/Uri;

.field public d:Lcom/shabakaty/downloader/f06;

.field public e:Z

.field public f:Lcom/shabakaty/downloader/ce5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wy1;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/wy1;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/wy1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/wy1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sm5;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/sm5;->b:Lcom/shabakaty/downloader/wy1;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/zl2;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sm5;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sm5;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/shabakaty/downloader/sm5;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sm5;->e:Z

    return-void
.end method

.method public final c(Landroid/net/Uri;)Z
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p1

    const/4 v12, 0x1

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sm5;->b()V

    return v12

    .line 2
    :cond_0
    iget-object v1, v11, Lcom/shabakaty/downloader/sm5;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sm5;->b()V

    .line 4
    iput-object v0, v11, Lcom/shabakaty/downloader/sm5;->c:Landroid/net/Uri;

    .line 5
    iget-object v0, v11, Lcom/shabakaty/downloader/sm5;->b:Lcom/shabakaty/downloader/wy1;

    .line 6
    iget v2, v0, Lcom/shabakaty/downloader/wy1;->s:I

    if-eqz v2, :cond_2

    .line 7
    iget v3, v0, Lcom/shabakaty/downloader/wy1;->t:I

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v11, Lcom/shabakaty/downloader/sm5;->a:Landroid/content/Context;

    .line 9
    new-instance v14, Lcom/shabakaty/downloader/f06;

    const/4 v4, 0x0

    const-wide/32 v5, 0x200000

    const/4 v7, 0x5

    const/16 v8, 0x14d

    const/16 v9, 0x2710

    move-object v0, v14

    move-object v10, p0

    .line 10
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/f06;-><init>(Landroid/content/Context;IIZJIIILcom/shabakaty/downloader/sm5;)V

    .line 11
    iput-object v14, v11, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v1, v11, Lcom/shabakaty/downloader/sm5;->a:Landroid/content/Context;

    .line 13
    new-instance v14, Lcom/shabakaty/downloader/f06;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x200000

    const/4 v7, 0x5

    const/16 v8, 0x14d

    const/16 v9, 0x2710

    move-object v0, v14

    move-object v10, p0

    .line 14
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/f06;-><init>(Landroid/content/Context;IIZJIIILcom/shabakaty/downloader/sm5;)V

    .line 15
    iput-object v14, v11, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    .line 16
    :goto_1
    iget-object v0, v11, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    iget-object v1, v11, Lcom/shabakaty/downloader/sm5;->c:Landroid/net/Uri;

    .line 17
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v12, [Landroid/net/Uri;

    aput-object v1, v3, v13

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v13

    .line 18
    :cond_3
    iget-boolean v0, v11, Lcom/shabakaty/downloader/sm5;->e:Z

    if-eqz v0, :cond_4

    return v12

    :cond_4
    return v13
.end method
