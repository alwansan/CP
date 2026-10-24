.class public final Lcom/google/android/gms/common/api/internal/y;
.super Lcom/google/android/gms/common/api/internal/w;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/w<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/xa5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa5;Lcom/shabakaty/downloader/zk4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xa5;",
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/w;-><init>(ILcom/shabakaty/downloader/zk4;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/shabakaty/downloader/yc5;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/c$a;)[Lcom/shabakaty/downloader/ia1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    iget-object p1, p1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/f;->b:[Lcom/shabakaty/downloader/ia1;

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    iget-object p1, p1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/f;->c:Z

    return p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    iget-object v0, v0, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    check-cast v0, Lcom/shabakaty/downloader/za5;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/za5;->d:Lcom/google/android/gms/common/api/internal/g;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/shabakaty/downloader/tq3;

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/tq3;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    iget-object v0, v0, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/internal/d;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/shabakaty/downloader/xa5;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
