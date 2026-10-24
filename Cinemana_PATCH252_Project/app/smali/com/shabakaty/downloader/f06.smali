.class public final Lcom/shabakaty/downloader/f06;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/cg6;

.field public final b:Lcom/shabakaty/downloader/sm5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "FetchBitmapTask"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/f06;->c:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZJIIILcom/shabakaty/downloader/sm5;)V
    .locals 14

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/shabakaty/downloader/xk6;

    const/4 v13, 0x0

    invoke-direct {v4, p0, v13}, Lcom/shabakaty/downloader/xk6;-><init>(Lcom/shabakaty/downloader/f06;Lcom/shabakaty/downloader/kl3;)V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/lg5;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/p43;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    const-wide/32 v8, 0x200000

    const/4 v10, 0x5

    const/16 v11, 0x14d

    const/16 v12, 0x2710

    const/4 v7, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 6
    invoke-interface/range {v2 .. v12}, Lcom/shabakaty/downloader/zg5;->o1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/fv6;IIZJIII)Lcom/shabakaty/downloader/cg6;

    move-result-object v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shabakaty/downloader/of5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    sget-object v2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "newFetchBitmapTaskImpl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/shabakaty/downloader/zg5;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Unable to call %s on %s."

    .line 9
    invoke-virtual {v2, v0, v4, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_1
    iput-object v13, v1, Lcom/shabakaty/downloader/f06;->a:Lcom/shabakaty/downloader/cg6;

    move-object/from16 v2, p10

    .line 11
    iput-object v2, v1, Lcom/shabakaty/downloader/f06;->b:Lcom/shabakaty/downloader/sm5;

    return-void
.end method

.method public static synthetic a(Lcom/shabakaty/downloader/f06;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Landroid/net/Uri;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/f06;->a:Lcom/shabakaty/downloader/cg6;

    aget-object p1, p1, v0

    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/cg6;->T1(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/f06;->c:Lcom/shabakaty/downloader/pk2;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "doFetch"

    aput-object v5, v4, v0

    const-class v0, Lcom/shabakaty/downloader/cg6;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Unable to call %s on %s."

    .line 6
    invoke-virtual {v3, p1, v0, v4}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/f06;->b:Lcom/shabakaty/downloader/sm5;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/sm5;->e:Z

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ce5;->o0(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/sm5;->d:Lcom/shabakaty/downloader/f06;

    :cond_1
    return-void
.end method
