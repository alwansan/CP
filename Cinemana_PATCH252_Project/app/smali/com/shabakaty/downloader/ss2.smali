.class public Lcom/shabakaty/downloader/ss2;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry.java"

# interfaces
.implements Lcom/shabakaty/downloader/gi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ss2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ss2$a;

.field public final b:Lcom/shabakaty/downloader/qg0;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/nq4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/qg0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ss2$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ss2$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ss2;->c:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/ss2;->a:Lcom/shabakaty/downloader/ss2$a;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/ss2;->b:Lcom/shabakaty/downloader/qg0;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/shabakaty/downloader/nq4;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ss2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ss2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nq4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ss2;->a:Lcom/shabakaty/downloader/ss2$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ss2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ss2;->b:Lcom/shabakaty/downloader/qg0;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/qg0;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/shabakaty/downloader/qg0;->b:Lcom/shabakaty/downloader/y30;

    iget-object v1, v1, Lcom/shabakaty/downloader/qg0;->c:Lcom/shabakaty/downloader/y30;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/ch;

    invoke-direct {v4, v2, v3, v1, p1}, Lcom/shabakaty/downloader/ch;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/fi;->create(Lcom/shabakaty/downloader/pg0;)Lcom/shabakaty/downloader/nq4;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ss2;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
