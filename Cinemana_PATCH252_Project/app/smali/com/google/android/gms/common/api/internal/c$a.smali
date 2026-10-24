.class public final Lcom/google/android/gms/common/api/internal/c$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;
.implements Lcom/shabakaty/downloader/sc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$b;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$c;",
        "Lcom/shabakaty/downloader/sc5;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/api/a$f;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/j9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j9<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/yc5;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ac5;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;",
            "Lcom/shabakaty/downloader/xa5;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Lcom/shabakaty/downloader/fb5;

.field public i:Z

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/internal/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/downloader/gb0;

.field public final synthetic l:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/api/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->e:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->k:Lcom/shabakaty/downloader/gb0;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/b;->a()Lcom/shabakaty/downloader/t30$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/t30$a;->a()Lcom/shabakaty/downloader/t30;

    move-result-object v5

    .line 10
    iget-object v1, p2, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/a;

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    const-string v1, "null reference"

    .line 12
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v3, p2, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    iget-object v6, p2, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 15
    iget-object v2, p2, Lcom/google/android/gms/common/api/b;->d:Lcom/shabakaty/downloader/j9;

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/yc5;

    invoke-direct {v2}, Lcom/shabakaty/downloader/yc5;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->d:Lcom/shabakaty/downloader/yc5;

    .line 18
    iget v2, p2, Lcom/google/android/gms/common/api/b;->f:I

    .line 19
    iput v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->g:I

    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/fb5;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/b;->a()Lcom/shabakaty/downloader/t30$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/t30$a;->a()Lcom/shabakaty/downloader/t30;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/fb5;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/t30;)V

    .line 24
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->h:Lcom/shabakaty/downloader/fb5;

    return-void

    .line 25
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->h:Lcom/shabakaty/downloader/fb5;

    return-void
.end method


# virtual methods
.method public final a([Lcom/shabakaty/downloader/ia1;)Lcom/shabakaty/downloader/ia1;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->B()[Lcom/shabakaty/downloader/ia1;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/shabakaty/downloader/ia1;

    .line 4
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/ad;

    array-length v4, v1

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    .line 5
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 6
    iget-object v7, v6, Lcom/shabakaty/downloader/ia1;->r:Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ia1;->W0()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    .line 9
    iget-object v5, v4, Lcom/shabakaty/downloader/ia1;->r:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ia1;->W0()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->D:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c$a;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->d:Lcom/shabakaty/downloader/yc5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/yc5;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/d$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 8
    new-instance v4, Lcom/google/android/gms/common/api/internal/z;

    new-instance v5, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zk4;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/d$a;Lcom/shabakaty/downloader/zk4;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/c$a;->f(Lcom/google/android/gms/common/api/internal/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gb0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c$a;->l(Lcom/shabakaty/downloader/gb0;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/c$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->x(Lcom/shabakaty/downloader/ij$e;)V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->m()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->d:Lcom/shabakaty/downloader/yc5;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->C()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    .line 8
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/yc5;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 14
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v0, 0xb

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->u:Lcom/shabakaty/downloader/yb5;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/yb5;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xa5;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/xa5;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/u;

    if-eqz p3, :cond_3

    .line 7
    iget v2, v1, Lcom/google/android/gms/common/api/internal/u;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/u;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/internal/u;->d(Ljava/lang/Exception;)V

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->i(Lcom/google/android/gms/common/api/internal/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->t()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->k:Lcom/shabakaty/downloader/gb0;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->n()V

    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->h:Lcom/shabakaty/downloader/fb5;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->p()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->m()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->u:Lcom/shabakaty/downloader/yb5;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/yb5;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->l(Lcom/shabakaty/downloader/gb0;)V

    .line 12
    iget v0, p1, Lcom/shabakaty/downloader/gb0;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 13
    sget-object p1, Lcom/google/android/gms/common/api/internal/c;->E:Lcom/google/android/gms/common/api/Status;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->k:Lcom/shabakaty/downloader/gb0;

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 20
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    .line 21
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 22
    iget-boolean p2, p2, Lcom/google/android/gms/common/api/internal/c;->C:Z

    if-nez p2, :cond_4

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    .line 24
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/gb0;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 26
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    .line 29
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/gb0;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, p2, v1, v2}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 33
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->j(Lcom/shabakaty/downloader/gb0;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 34
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    iget v3, p0, Lcom/google/android/gms/common/api/internal/c$a;->g:I

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/common/api/internal/c;->c(Lcom/shabakaty/downloader/gb0;I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 35
    iget p2, p1, Lcom/shabakaty/downloader/gb0;->s:I

    const/16 v3, 0x12

    if-ne p2, v3, :cond_7

    .line 36
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    .line 37
    :cond_7
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    if-eqz p2, :cond_8

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 39
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 p2, 0x9

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    .line 42
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 43
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    .line 44
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/gb0;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 46
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 48
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    :cond_9
    return-void
.end method

.method public final h(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->d:Lcom/shabakaty/downloader/yc5;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/yc5;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/yc5;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->t()V

    :cond_2
    return v1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    return v3

    :cond_4
    return v1
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/u;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/k;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->k(Lcom/google/android/gms/common/api/internal/u;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/k;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/k;->f(Lcom/google/android/gms/common/api/internal/c$a;)[Lcom/shabakaty/downloader/ia1;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/c$a;->a([Lcom/shabakaty/downloader/ia1;)Lcom/shabakaty/downloader/ia1;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->k(Lcom/google/android/gms/common/api/internal/u;)V

    return v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v3, v2, Lcom/shabakaty/downloader/ia1;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ia1;->W0()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4d

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v6

    const-string v7, " could not execute call because it requires feature ("

    const-string v8, ", "

    invoke-static {v6, p1, v7, v3, v8}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    .line 10
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 12
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/c;->C:Z

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/k;->g(Lcom/google/android/gms/common/api/internal/c$a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    new-instance p1, Lcom/google/android/gms/common/api/internal/c$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/common/api/internal/c$b;-><init>(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/ia1;Lcom/google/android/gms/common/api/internal/l;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v2, 0x1388

    const/16 v4, 0xf

    if-ltz v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$b;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 22
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 28
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 29
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 33
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    .line 35
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    new-instance p1, Lcom/shabakaty/downloader/gb0;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->j(Lcom/shabakaty/downloader/gb0;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->g:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/c;->c(Lcom/shabakaty/downloader/gb0;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 39
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/mw4;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/mw4;-><init>(Lcom/shabakaty/downloader/ia1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->d(Ljava/lang/Exception;)V

    return v1
.end method

.method public final j(Lcom/shabakaty/downloader/gb0;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->F:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->z:Ljava/util/Set;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    .line 9
    iget v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->g:I

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/dc5;->m(Lcom/shabakaty/downloader/gb0;I)V

    const/4 p1, 0x1

    .line 10
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 11
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->d:Lcom/shabakaty/downloader/yc5;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/u;->c(Lcom/shabakaty/downloader/yc5;Z)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/u;->e(Lcom/google/android/gms/common/api/internal/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error in GoogleApi implementation for client %s."

    .line 5
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c$a;->onConnectionSuspended(I)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lcom/shabakaty/downloader/gb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ac5;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/gb0;->v:Lcom/shabakaty/downloader/gb0;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->t()Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->k:Lcom/shabakaty/downloader/gb0;

    return-void
.end method

.method public final n()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xa

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/c;->u:Lcom/shabakaty/downloader/yb5;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/yb5;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/gb0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "GoogleApiManager"

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The service for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/internal/c$c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/internal/c$c;-><init>(Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/api/a$f;Lcom/shabakaty/downloader/j9;)V

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->h:Lcom/shabakaty/downloader/fb5;

    const-string v3, "null reference"

    .line 17
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    if-eqz v3, :cond_2

    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->p()V

    .line 20
    :cond_2
    iget-object v3, v2, Lcom/shabakaty/downloader/fb5;->e:Lcom/shabakaty/downloader/t30;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 21
    iput-object v4, v3, Lcom/shabakaty/downloader/t30;->h:Ljava/lang/Integer;

    .line 22
    iget-object v3, v2, Lcom/shabakaty/downloader/fb5;->c:Lcom/google/android/gms/common/api/a$a;

    iget-object v4, v2, Lcom/shabakaty/downloader/fb5;->a:Landroid/content/Context;

    iget-object v5, v2, Lcom/shabakaty/downloader/fb5;->b:Landroid/os/Handler;

    .line 23
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Lcom/shabakaty/downloader/fb5;->e:Lcom/shabakaty/downloader/t30;

    .line 24
    iget-object v7, v6, Lcom/shabakaty/downloader/t30;->g:Lcom/shabakaty/downloader/x54;

    move-object v8, v2

    move-object v9, v2

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/common/api/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mb5;

    iput-object v3, v2, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    .line 26
    iput-object v1, v2, Lcom/shabakaty/downloader/fb5;->g:Lcom/shabakaty/downloader/gb5;

    .line 27
    iget-object v3, v2, Lcom/shabakaty/downloader/fb5;->d:Ljava/util/Set;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    iget-object v2, v2, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    invoke-interface {v2}, Lcom/shabakaty/downloader/mb5;->v()V

    goto :goto_1

    .line 29
    :cond_4
    :goto_0
    iget-object v3, v2, Lcom/shabakaty/downloader/fb5;->b:Landroid/os/Handler;

    new-instance v4, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/fb5;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2, v1}, Lcom/google/android/gms/common/api/a$f;->u(Lcom/shabakaty/downloader/ij$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 31
    new-instance v2, Lcom/shabakaty/downloader/gb0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    .line 32
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    .line 33
    new-instance v2, Lcom/shabakaty/downloader/gb0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v0

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->p()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->c(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/google/android/gms/common/api/internal/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/c$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->m()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/gb0;->v:Lcom/shabakaty/downloader/gb0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c$a;->l(Lcom/shabakaty/downloader/gb0;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->s()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/xa5;

    .line 7
    iget-object v2, v1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/f;->b:[Lcom/shabakaty/downloader/ia1;

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/c$a;->a([Lcom/shabakaty/downloader/ia1;)Lcom/shabakaty/downloader/ia1;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, v1, Lcom/shabakaty/downloader/xa5;->a:Lcom/google/android/gms/common/api/internal/f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    new-instance v3, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v3}, Lcom/shabakaty/downloader/zk4;-><init>()V

    check-cast v1, Lcom/shabakaty/downloader/za5;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/za5;->d:Lcom/google/android/gms/common/api/internal/g;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/shabakaty/downloader/tq3;

    .line 14
    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/tq3;->r(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x3

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c$a;->onConnectionSuspended(I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->q()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c$a;->t()V

    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/u;

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/internal/c$a;->i(Lcom/google/android/gms/common/api/internal/u;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gb0;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 6
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 7
    new-instance p3, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/c$a;Lcom/shabakaty/downloader/gb0;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 7
    iget-wide v2, v2, Lcom/google/android/gms/common/api/internal/c;->r:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
