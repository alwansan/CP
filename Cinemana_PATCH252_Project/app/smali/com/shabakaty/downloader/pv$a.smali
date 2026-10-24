.class public final Lcom/shabakaty/downloader/pv$a;
.super Ljava/lang/Object;
.source "CaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/wv2;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lcom/shabakaty/downloader/ew2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pv$a;->e:Z

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ew2;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pv;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/shabakaty/downloader/pv$a;->e:Z

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/ew2;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 16
    iput-object v1, p0, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    .line 17
    iget-object v1, p1, Lcom/shabakaty/downloader/pv;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p1, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    invoke-static {v0}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    .line 19
    iget v0, p1, Lcom/shabakaty/downloader/pv;->c:I

    iput v0, p0, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    .line 21
    iget-object v1, p1, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-boolean v0, p1, Lcom/shabakaty/downloader/pv;->e:Z

    .line 24
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pv$a;->e:Z

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/pv;->f:Lcom/shabakaty/downloader/lk4;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    iget-object v1, p1, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/ew2;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 31
    iput-object p1, p0, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/ps;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ps;

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/ps;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duplicate camera capture callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/shabakaty/downloader/o90;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/o90;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o90$a;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    const/4 v3, 0x0

    check-cast v2, Lcom/shabakaty/downloader/k83;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v2, Lcom/shabakaty/downloader/nv2;

    if-eqz v4, :cond_0

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/nv2;

    check-cast v3, Lcom/shabakaty/downloader/nv2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/nv2;->b()Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/nv2;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v3, Lcom/shabakaty/downloader/nv2;

    if-eqz v2, :cond_1

    .line 8
    check-cast v3, Lcom/shabakaty/downloader/nv2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/nv2;->a()Lcom/shabakaty/downloader/nv2;

    move-result-object v3

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    .line 10
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/o90;->c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object v4

    .line 11
    check-cast v2, Lcom/shabakaty/downloader/yv2;

    invoke-virtual {v2, v1, v4, v3}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Lcom/shabakaty/downloader/pv;
    .locals 11

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v2

    iget v3, p0, Lcom/shabakaty/downloader/pv$a;->c:I

    iget-object v4, p0, Lcom/shabakaty/downloader/pv$a;->d:Ljava/util/List;

    iget-boolean v5, p0, Lcom/shabakaty/downloader/pv$a;->e:Z

    iget-object v0, p0, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    .line 3
    sget-object v6, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 4
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 5
    iget-object v8, v0, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v8, Lcom/shabakaty/downloader/lk4;

    invoke-direct {v8, v6}, Lcom/shabakaty/downloader/lk4;-><init>(Ljava/util/Map;)V

    move-object v0, v7

    move-object v6, v8

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pv;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V

    return-object v7
.end method
