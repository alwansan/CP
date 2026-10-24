.class public final Lcom/shabakaty/downloader/pe3$a;
.super Ljava/lang/Object;
.source "PowerSpinnerPersistence.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pe3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/shabakaty/downloader/pe3;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pe3;->a:Lcom/shabakaty/downloader/pe3;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/pe3;->a:Lcom/shabakaty/downloader/pe3;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/pe3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pe3;-><init>(Lcom/shabakaty/downloader/nn0;)V

    .line 5
    sput-object v0, Lcom/shabakaty/downloader/pe3;->a:Lcom/shabakaty/downloader/pe3;

    const-string v1, "com.skydoves.powerspinenr"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "context.getSharedPrefere\u2026r\", Context.MODE_PRIVATE)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p1, Lcom/shabakaty/downloader/pe3;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
