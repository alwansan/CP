.class public final Lcom/shabakaty/downloader/z71;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideExoPlayerFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/lk2;

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ep0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/fj2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ie;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/to0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lk2;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ep0;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/fj2;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ie;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/to0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z71;->a:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/z71;->b:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/z71;->c:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/z71;->d:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/z71;->e:Lcom/shabakaty/downloader/oj3;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/z71;->f:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z71;->a:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/z71;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/z71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ep0;

    iget-object v3, p0, Lcom/shabakaty/downloader/z71;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fj2;

    iget-object v4, p0, Lcom/shabakaty/downloader/z71;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v4}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ie;

    iget-object v5, p0, Lcom/shabakaty/downloader/z71;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v5}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/to0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackSelector"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadControl"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioAttributes"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultRenderersFactory"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/s64$b;

    invoke-direct {v0, v1, v5}, Lcom/shabakaty/downloader/s64$b;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/or3;)V

    .line 5
    iget-boolean v1, v0, Lcom/shabakaty/downloader/s64$b;->t:Z

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/s64$b;->d:Lcom/shabakaty/downloader/lp4;

    .line 7
    iget-boolean v1, v0, Lcom/shabakaty/downloader/s64$b;->t:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 8
    iput-object v3, v0, Lcom/shabakaty/downloader/s64$b;->f:Lcom/shabakaty/downloader/fj2;

    .line 9
    iget-boolean v1, v0, Lcom/shabakaty/downloader/s64$b;->t:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 10
    iput-object v4, v0, Lcom/shabakaty/downloader/s64$b;->j:Lcom/shabakaty/downloader/ie;

    .line 11
    iput-boolean v5, v0, Lcom/shabakaty/downloader/s64$b;->k:Z

    .line 12
    iget-boolean v1, v0, Lcom/shabakaty/downloader/s64$b;->t:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 13
    iput-boolean v5, v0, Lcom/shabakaty/downloader/s64$b;->t:Z

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/s64;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/s64;-><init>(Lcom/shabakaty/downloader/s64$b;)V

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iput-object v4, v1, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    const/4 v0, 0x3

    .line 18
    invoke-virtual {v1, v5, v0, v4}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->n:Lcom/shabakaty/downloader/xd4;

    iget v3, v4, Lcom/shabakaty/downloader/ie;->c:I

    invoke-static {v3}, Lcom/shabakaty/downloader/sy4;->z(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/xd4;->c(I)V

    .line 20
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/k6;->X(Lcom/shabakaty/downloader/ie;)V

    .line 21
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/oe;

    .line 22
    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/oe;->X(Lcom/shabakaty/downloader/ie;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/ne;->c(Lcom/shabakaty/downloader/ie;)V

    .line 24
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result v0

    .line 25
    iget-object v3, v1, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->h()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/shabakaty/downloader/ne;->e(ZI)I

    move-result v3

    .line 26
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/s64;->l0(ZI)I

    move-result v4

    .line 27
    invoke-virtual {v1, v0, v3, v4}, Lcom/shabakaty/downloader/s64;->u0(ZII)V

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/p51;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/p51;-><init>(Lcom/shabakaty/downloader/tm2;)V

    .line 29
    iget-object v2, v1, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, v2, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Lcom/shabakaty/downloader/si2$c;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/si2$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
