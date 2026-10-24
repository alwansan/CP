.class public Lcom/shabakaty/downloader/pp2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pp2$b;,
        Lcom/shabakaty/downloader/pp2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/pk2;

.field public b:J

.field public final c:Lcom/shabakaty/downloader/br3;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseIntArray;

.field public f:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/sp2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/os/Handler;

.field public j:Ljava/util/TimerTask;

.field public k:Lcom/shabakaty/downloader/nb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/shabakaty/downloader/nb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nb3<",
            "Lcom/shabakaty/downloader/br3$c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/pp2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pp2;->m:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaQueue"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/pp2;->a:Lcom/shabakaty/downloader/pk2;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/pp2;->c:Lcom/shabakaty/downloader/br3;

    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->d:Ljava/util/List;

    .line 7
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->e:Landroid/util/SparseIntArray;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->g:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/yz6;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/yz6;-><init>(Lcom/shabakaty/downloader/pp2;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/pp2$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/pp2$b;-><init>(Lcom/shabakaty/downloader/pp2;)V

    const-string v2, "Must be called from the main thread."

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/q57;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/q57;-><init>(Lcom/shabakaty/downloader/pp2;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pp2;->f:Landroid/util/LruCache;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp2;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/pp2;->b:J

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp2;->b()V

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/pp2;[I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/pp2;->m:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pp2$a;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/pp2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/pp2;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp2;->f()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->f:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb3;->b()V

    .line 10
    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nb3;->b()V

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp2;->h()V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp2;->g()V

    return-void
.end method

.method public final b()V
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/pp2;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nb3;->b()V

    .line 5
    iput-object v2, p0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nb3;->b()V

    .line 8
    iput-object v2, p0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/pp2;->c:Lcom/shabakaty/downloader/br3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x11

    .line 12
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/mi5;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mi5;-><init>(Lcom/shabakaty/downloader/br3;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    .line 14
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/ev6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/ev6;-><init>(Lcom/shabakaty/downloader/pp2;I)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    return-void
.end method

.method public final e()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->c:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v1, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 4
    :goto_0
    iget v2, v0, Lcom/shabakaty/downloader/dr2;->v:I

    iget v3, v0, Lcom/shabakaty/downloader/dr2;->w:I

    iget v4, v0, Lcom/shabakaty/downloader/dr2;->C:I

    invoke-static {v2, v3, v4, v1}, Lcom/shabakaty/downloader/dr2;->G1(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/shabakaty/downloader/dr2;->s:J

    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pp2$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pp2$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp2;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pp2$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
