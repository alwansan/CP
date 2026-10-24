.class public final Lcom/shabakaty/downloader/hc6;
.super Lcom/shabakaty/downloader/ql2;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ql2<",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/ht5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/shabakaty/downloader/wc6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wc6;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hc6;->i:Lcom/shabakaty/downloader/wc6;

    const/16 p1, 0x14

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ql2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/hc6;->i:Lcom/shabakaty/downloader/wc6;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/jb7;->c()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/d46;->s0:Lcom/shabakaty/downloader/z36;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wc6;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/wc6;->x(Ljava/lang/String;Lcom/shabakaty/downloader/kb6;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/wc6;->i:Lcom/shabakaty/downloader/ql2;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/shabakaty/downloader/ql2;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/ht5;

    :goto_1
    return-object v3

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    throw p1
.end method
