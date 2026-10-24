.class public final Lcom/shabakaty/downloader/wy5;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic v:Landroid/content/Context;

.field public final synthetic w:Landroid/os/Bundle;

.field public final synthetic x:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    iput-object p4, p0, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    iput-object p5, p0, Lcom/shabakaty/downloader/wy5;->w:Landroid/os/Bundle;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "null reference"

    const-string v3, "com.google.android.gms.measurement.dynamite"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 2
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v6, v1, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    iget-object v0, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 4
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->l:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    .line 6
    invoke-static {v0, v7, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v7, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/hu5;->asInterface(Landroid/os/IBinder;)Lcom/shabakaty/downloader/nu5;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v6, v0, v5, v4}, Lcom/shabakaty/downloader/g66;->a(Ljava/lang/Exception;ZZ)V

    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, v6, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, v1, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FA"

    const-string v2, "Failed to connect to measurement client."

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 16
    invoke-static {v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v6, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 17
    invoke-static {v6, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    .line 18
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v3, v0, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 19
    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/ow5;

    int-to-long v10, v6

    const-wide/32 v8, 0xa471

    iget-object v3, v1, Lcom/shabakaty/downloader/wy5;->w:Landroid/os/Bundle;

    iget-object v6, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 20
    invoke-static {v6}, Lcom/shabakaty/downloader/bd6;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lcom/shabakaty/downloader/ow5;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    .line 21
    iget-object v3, v3, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 22
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/wy5;->v:Landroid/content/Context;

    .line 24
    new-instance v6, Lcom/shabakaty/downloader/p43;

    invoke-direct {v6, v2}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 25
    iget-wide v7, v1, Lcom/shabakaty/downloader/s36;->r:J

    invoke-interface {v3, v6, v0, v7, v8}, Lcom/shabakaty/downloader/nu5;->initialize(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/ow5;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/shabakaty/downloader/wy5;->x:Lcom/shabakaty/downloader/g66;

    .line 26
    invoke-virtual {v2, v0, v5, v4}, Lcom/shabakaty/downloader/g66;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method
