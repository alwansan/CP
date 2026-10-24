.class public final Lcom/shabakaty/downloader/cr2;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cr2$a;,
        Lcom/shabakaty/downloader/cr2$b;,
        Lcom/shabakaty/downloader/cr2$c;,
        Lcom/shabakaty/downloader/cr2$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/shabakaty/downloader/kp2;",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/cr2$d;

.field public final e:Lcom/shabakaty/downloader/yq2$a;

.field public final f:Lcom/shabakaty/downloader/s01$a;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/cr2$c;",
            "Lcom/shabakaty/downloader/cr2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/t54;

.field public j:Z

.field public k:Lcom/shabakaty/downloader/sp4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr2$d;Lcom/shabakaty/downloader/k6;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->d:Lcom/shabakaty/downloader/cr2$d;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/t54$a;

    .line 4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/t54$a;-><init>(ILjava/util/Random;)V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    .line 6
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->b:Ljava/util/IdentityHashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->c:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/yq2$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/yq2$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2;->e:Lcom/shabakaty/downloader/yq2$a;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/s01$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s01$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr2;->f:Lcom/shabakaty/downloader/s01$a;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    .line 12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/yq2$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/shabakaty/downloader/yq2$a$a;

    invoke-direct {v1, p3, p2}, Lcom/shabakaty/downloader/yq2$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/shabakaty/downloader/s01$a$a;

    invoke-direct {v0, p3, p2}, Lcom/shabakaty/downloader/s01$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/shabakaty/downloader/t54;)Lcom/shabakaty/downloader/nn4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;",
            "Lcom/shabakaty/downloader/t54;",
            ")",
            "Lcom/shabakaty/downloader/nn4;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    move p3, p1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cr2$c;

    const/4 v1, 0x0

    if-lez p3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/cr2$c;

    .line 6
    iget-object v3, v2, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/cr2$c;->d:I

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/di1;->p()I

    move-result v3

    add-int/2addr v3, v2

    .line 10
    iput v3, v0, Lcom/shabakaty/downloader/cr2$c;->d:I

    .line 11
    iput-boolean v1, v0, Lcom/shabakaty/downloader/cr2$c;->e:Z

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 13
    :cond_0
    iput v1, v0, Lcom/shabakaty/downloader/cr2$c;->d:I

    .line 14
    iput-boolean v1, v0, Lcom/shabakaty/downloader/cr2$c;->e:Z

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/di1;->p()I

    move-result v1

    .line 19
    invoke-virtual {p0, p3, v1}, Lcom/shabakaty/downloader/cr2;->b(II)V

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->c:Ljava/util/Map;

    iget-object v2, v0, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-boolean v1, p0, Lcom/shabakaty/downloader/cr2;->j:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cr2;->g(Lcom/shabakaty/downloader/cr2$c;)V

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cr2$b;

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v0, v0, Lcom/shabakaty/downloader/cr2$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/uq2;->p(Lcom/shabakaty/downloader/uq2$b;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr2;->c()Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cr2$c;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/cr2$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/shabakaty/downloader/cr2$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lcom/shabakaty/downloader/nn4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/nn4;->a:Lcom/shabakaty/downloader/nn4;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/cr2$c;

    .line 5
    iput v1, v2, Lcom/shabakaty/downloader/cr2$c;->d:I

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/di1;->p()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/wd3;

    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/wd3;-><init>(Ljava/util/Collection;Lcom/shabakaty/downloader/t54;)V

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cr2$c;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cr2$b;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v1, v1, Lcom/shabakaty/downloader/cr2$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/uq2;->p(Lcom/shabakaty/downloader/uq2$b;)V

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(Lcom/shabakaty/downloader/cr2$c;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/cr2$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cr2$b;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v2, v0, Lcom/shabakaty/downloader/cr2$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/uq2;->i(Lcom/shabakaty/downloader/uq2$b;)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v2, v0, Lcom/shabakaty/downloader/cr2$b;->c:Lcom/shabakaty/downloader/cr2$a;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/uq2;->c(Lcom/shabakaty/downloader/yq2;)V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v0, v0, Lcom/shabakaty/downloader/cr2$b;->c:Lcom/shabakaty/downloader/cr2$a;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/uq2;->a(Lcom/shabakaty/downloader/s01;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/cr2$c;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/br2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/br2;-><init>(Lcom/shabakaty/downloader/cr2;)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/cr2$a;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/cr2$a;-><init>(Lcom/shabakaty/downloader/cr2;Lcom/shabakaty/downloader/cr2$c;)V

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    new-instance v4, Lcom/shabakaty/downloader/cr2$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/shabakaty/downloader/cr2$b;-><init>(Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/cr2$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->t()Landroid/os/Looper;

    move-result-object p1

    .line 6
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/yq2$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/shabakaty/downloader/yq2$a$a;

    invoke-direct {v5, v3, v2}, Lcom/shabakaty/downloader/yq2$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->t()Landroid/os/Looper;

    move-result-object p1

    .line 11
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/shabakaty/downloader/s01$a$a;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/s01$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2;->k:Lcom/shabakaty/downloader/sp4;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/rj;->q(Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/sp4;)V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/kp2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2;->b:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cr2$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/zm2;->m(Lcom/shabakaty/downloader/kp2;)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    check-cast p1, Lcom/shabakaty/downloader/ym2;

    iget-object p1, p1, Lcom/shabakaty/downloader/ym2;->r:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr2;->d()V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cr2;->f(Lcom/shabakaty/downloader/cr2$c;)V

    return-void
.end method

.method public final i(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cr2$c;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/cr2;->c:Ljava/util/Map;

    iget-object v3, v1, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/di1;->p()I

    move-result v2

    neg-int v2, v2

    .line 6
    invoke-virtual {p0, p2, v2}, Lcom/shabakaty/downloader/cr2;->b(II)V

    .line 7
    iput-boolean v0, v1, Lcom/shabakaty/downloader/cr2$c;->e:Z

    .line 8
    iget-boolean v2, p0, Lcom/shabakaty/downloader/cr2;->j:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/cr2;->f(Lcom/shabakaty/downloader/cr2$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
