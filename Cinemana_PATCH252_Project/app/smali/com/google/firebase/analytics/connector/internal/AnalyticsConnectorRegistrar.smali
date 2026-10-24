.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/l6;
    .locals 7

    const-class v0, Lcom/shabakaty/downloader/ec1;

    .line 1
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ec1;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/shabakaty/downloader/ff4;

    .line 3
    invoke-interface {p0, v2}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ff4;

    const-string v2, "null reference"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 6
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null reference"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/m6;->c:Lcom/shabakaty/downloader/l6;

    if-nez v2, :cond_2

    const-class v2, Lcom/shabakaty/downloader/m6;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/m6;->c:Lcom/shabakaty/downloader/l6;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lcom/shabakaty/downloader/ll0;

    sget-object v5, Lcom/shabakaty/downloader/mm5;->r:Lcom/shabakaty/downloader/mm5;

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/sd5;->a:Lcom/shabakaty/downloader/sd5;

    invoke-interface {p0, v4, v5, v6}, Lcom/shabakaty/downloader/ff4;->b(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/m51;)V

    const-string p0, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->f()Z

    move-result v0

    .line 14
    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/m6;

    const/4 v0, 0x0

    .line 15
    invoke-static {v1, v0, v0, v0, v3}, Lcom/shabakaty/downloader/g66;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/shabakaty/downloader/g66;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->b:Lcom/shabakaty/downloader/gb;

    .line 17
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/m6;-><init>(Lcom/shabakaty/downloader/gb;)V

    sput-object p0, Lcom/shabakaty/downloader/m6;->c:Lcom/shabakaty/downloader/l6;

    .line 18
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/shabakaty/downloader/m6;->c:Lcom/shabakaty/downloader/l6;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/shabakaty/downloader/o80;

    const-class v2, Lcom/shabakaty/downloader/l6;

    .line 1
    invoke-static {v2}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v2

    const-class v3, Lcom/shabakaty/downloader/ec1;

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v3, Landroid/content/Context;

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v4, v3, v5, v6}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v3, Lcom/shabakaty/downloader/ff4;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v4, v3, v5, v6}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v3, Lcom/shabakaty/downloader/nm5;->a:Lcom/shabakaty/downloader/nm5;

    .line 8
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 9
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/o80$b;->d(I)Lcom/shabakaty/downloader/o80$b;

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-analytics"

    const-string v2, "19.0.1"

    .line 11
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/gh2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;

    move-result-object v0

    aput-object v0, v1, v5

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
