.class public final Lcom/google/android/gms/common/api/internal/z;
.super Lcom/google/android/gms/common/api/internal/w;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/w<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d$a;Lcom/shabakaty/downloader/zk4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;",
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/w;-><init>(ILcom/shabakaty/downloader/zk4;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/d$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/shabakaty/downloader/yc5;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/c$a;)[Lcom/shabakaty/downloader/ia1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xa5;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/f;->b:[Lcom/shabakaty/downloader/ia1;

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/c$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xa5;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 4
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/f;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xa5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/xa5;->b:Lcom/google/android/gms/common/api/internal/h;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    check-cast v1, Lcom/google/android/gms/common/api/internal/t;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/t;->b:Lcom/google/android/gms/common/api/internal/g;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/g;->b:Lcom/shabakaty/downloader/tq3;

    .line 8
    invoke-interface {v1, p1, v2}, Lcom/shabakaty/downloader/tq3;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/internal/d;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/google/android/gms/common/api/internal/d;->a:Ljava/lang/Object;

    .line 12
    iput-object v0, p1, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    return-void
.end method
