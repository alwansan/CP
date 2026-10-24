.class public final Lcom/shabakaty/downloader/lg5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/pk2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastDynamiteModule"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    .line 4
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/shabakaty/downloader/zg5;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/zg5;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/tg5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/tg5;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/of5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/of5;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
