.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Landroidx/navigation/f;

.field public d:Landroidx/navigation/d;

.field public e:Landroid/os/Bundle;

.field public f:[Landroid/os/Parcelable;

.field public g:Z

.field public final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/shabakaty/downloader/vw2;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/rh2;

.field public j:Lcom/shabakaty/downloader/xw2;

.field public k:Landroidx/navigation/i;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/shabakaty/downloader/qh2;

.field public final n:Lcom/shabakaty/downloader/e63;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 3
    new-instance v0, Landroidx/navigation/i;

    invoke-direct {v0}, Landroidx/navigation/i;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Landroidx/navigation/NavController$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->m:Lcom/shabakaty/downloader/qh2;

    .line 6
    new-instance v0, Landroidx/navigation/NavController$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/NavController$a;-><init>(Landroidx/navigation/NavController;Z)V

    iput-object v0, p0, Landroidx/navigation/NavController;->n:Lcom/shabakaty/downloader/e63;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/navigation/NavController;->o:Z

    .line 8
    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 9
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 10
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    goto :goto_1

    .line 12
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    new-instance v0, Landroidx/navigation/e;

    invoke-direct {v0, p1}, Landroidx/navigation/e;-><init>(Landroidx/navigation/i;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/i;->a(Landroidx/navigation/h;)Landroidx/navigation/h;

    .line 14
    iget-object p1, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    new-instance v0, Landroidx/navigation/a;

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/navigation/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/i;->a(Landroidx/navigation/h;)Landroidx/navigation/h;

    return-void
.end method


# virtual methods
.method public a(Landroidx/navigation/NavController$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vw2;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    .line 5
    invoke-interface {p1, p0, v1, v0}, Landroidx/navigation/NavController$b;->k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 12

    .line 1
    sget-object v0, Landroidx/lifecycle/e$c;->u:Landroidx/lifecycle/e$c;

    sget-object v1, Landroidx/lifecycle/e$c;->v:Landroidx/lifecycle/e$c;

    :goto_0
    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 2
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vw2;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 4
    instance-of v2, v2, Landroidx/navigation/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 5
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vw2;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 7
    iget v2, v2, Landroidx/navigation/c;->t:I

    .line 8
    invoke-virtual {p0, v2, v3}, Landroidx/navigation/NavController;->n(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 10
    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vw2;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    const/4 v4, 0x0

    .line 12
    instance-of v5, v2, Lcom/shabakaty/downloader/re1;

    if-eqz v5, :cond_2

    .line 13
    iget-object v5, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 14
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/vw2;

    .line 16
    iget-object v6, v6, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 17
    instance-of v7, v6, Landroidx/navigation/d;

    if-nez v7, :cond_1

    instance-of v7, v6, Lcom/shabakaty/downloader/re1;

    if-nez v7, :cond_1

    move-object v4, v6

    .line 18
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v6, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 20
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/vw2;

    .line 22
    iget-object v8, v7, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 23
    iget-object v9, v7, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    if-eqz v2, :cond_4

    .line 24
    iget v10, v9, Landroidx/navigation/c;->t:I

    iget v11, v2, Landroidx/navigation/c;->t:I

    if-ne v10, v11, :cond_4

    if-eq v8, v1, :cond_3

    .line 25
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_3
    iget-object v2, v2, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_7

    .line 27
    iget v9, v9, Landroidx/navigation/c;->t:I

    iget v10, v4, Landroidx/navigation/c;->t:I

    if-ne v9, v10, :cond_7

    if-ne v8, v1, :cond_5

    .line 28
    iput-object v0, v7, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 29
    invoke-virtual {v7}, Lcom/shabakaty/downloader/vw2;->b()V

    goto :goto_2

    :cond_5
    if-eq v8, v0, :cond_6

    .line 30
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_6
    :goto_2
    iget-object v4, v4, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    goto :goto_1

    .line 32
    :cond_7
    sget-object v8, Landroidx/lifecycle/e$c;->t:Landroidx/lifecycle/e$c;

    .line 33
    iput-object v8, v7, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 34
    invoke-virtual {v7}, Lcom/shabakaty/downloader/vw2;->b()V

    goto :goto_1

    .line 35
    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vw2;

    .line 38
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/e$c;

    if-eqz v2, :cond_9

    .line 39
    iput-object v2, v1, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 40
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vw2;->b()V

    goto :goto_3

    .line 41
    :cond_9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vw2;->b()V

    goto :goto_3

    .line 42
    :cond_a
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vw2;

    .line 43
    iget-object v1, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$b;

    .line 44
    iget-object v4, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 45
    iget-object v5, v0, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    .line 46
    invoke-interface {v2, p0, v4, v5}, Landroidx/navigation/NavController$b;->k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroidx/navigation/c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v1, v0, Landroidx/navigation/c;->t:I

    if-ne v1, p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vw2;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 7
    :goto_0
    instance-of v1, v0, Landroidx/navigation/d;

    if-eqz v1, :cond_3

    .line 8
    check-cast v0, Landroidx/navigation/d;

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, v0, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    :goto_1
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/navigation/d;->u(IZ)Landroidx/navigation/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shabakaty/downloader/vw2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vw2;

    return-object v0
.end method

.method public e()Landroidx/navigation/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->d()Lcom/shabakaty/downloader/vw2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vw2;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 3
    instance-of v2, v2, Landroidx/navigation/d;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public g()Landroidx/navigation/d;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lcom/shabakaty/downloader/vw2;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vw2;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 7
    instance-of v2, v2, Landroidx/navigation/d;

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vw2;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    :goto_0
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/c;->i(I)Lcom/shabakaty/downloader/sw2;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    .line 6
    iget-object p3, v1, Lcom/shabakaty/downloader/sw2;->b:Landroidx/navigation/g;

    .line 7
    :cond_1
    iget v3, v1, Lcom/shabakaty/downloader/sw2;->a:I

    .line 8
    iget-object v4, v1, Lcom/shabakaty/downloader/sw2;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move v3, p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    :cond_4
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-nez v3, :cond_6

    if-eqz p3, :cond_6

    .line 13
    iget p2, p3, Landroidx/navigation/g;->b:I

    const/4 v4, -0x1

    if-eq p2, v4, :cond_6

    .line 14
    iget-boolean p1, p3, Landroidx/navigation/g;->c:Z

    .line 15
    invoke-virtual {p0, p2, p1}, Landroidx/navigation/NavController;->m(IZ)Z

    return-void

    :cond_6
    if-eqz v3, :cond_9

    .line 16
    invoke-virtual {p0, v3}, Landroidx/navigation/NavController;->c(I)Landroidx/navigation/c;

    move-result-object p2

    if-nez p2, :cond_8

    .line 17
    iget-object p2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {p2, v3}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, " cannot be found from the current destination "

    if-eqz v1, :cond_7

    .line 18
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string v1, "Navigation destination "

    const-string v2, " referenced from action "

    invoke-static {v1, p2, v2}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 19
    invoke-static {v1, p1}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Navigation action/destination "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    invoke-virtual {p0, p2, v2, p3, p4}, Landroidx/navigation/NavController;->j(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current navigation node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget v1, p3, Landroidx/navigation/g;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    iget-boolean v2, p3, Landroidx/navigation/g;->c:Z

    .line 3
    invoke-virtual {p0, v1, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 5
    iget-object v3, p1, Landroidx/navigation/c;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Landroidx/navigation/i;->d(Ljava/lang/String;)Landroidx/navigation/h;

    move-result-object v2

    .line 7
    invoke-virtual {p1, p2}, Landroidx/navigation/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 8
    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/navigation/h;->b(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)Landroidx/navigation/c;

    move-result-object p4

    const/4 v2, 0x1

    if-eqz p4, :cond_c

    .line 9
    instance-of p3, p4, Lcom/shabakaty/downloader/re1;

    if-nez p3, :cond_1

    .line 10
    :goto_1
    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 11
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/vw2;

    .line 12
    iget-object p3, p3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 13
    instance-of p3, p3, Lcom/shabakaty/downloader/re1;

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 14
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/vw2;

    .line 15
    iget-object p3, p3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 16
    iget p3, p3, Landroidx/navigation/c;->t:I

    .line 17
    invoke-virtual {p0, p3, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    .line 19
    instance-of v3, p1, Landroidx/navigation/d;

    if-eqz v3, :cond_4

    move-object v3, p4

    .line 20
    :goto_2
    iget-object v9, v3, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    if-eqz v9, :cond_2

    .line 21
    new-instance v10, Lcom/shabakaty/downloader/vw2;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    move-object v3, v10

    move-object v5, v9

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;)V

    .line 22
    invoke-virtual {p3, v10}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 23
    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 24
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vw2;

    .line 25
    iget-object v3, v3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    if-ne v3, v9, :cond_2

    .line 26
    iget v3, v9, Landroidx/navigation/c;->t:I

    .line 27
    invoke-virtual {p0, v3, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    :cond_2
    if-eqz v9, :cond_4

    if-ne v9, p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v9

    goto :goto_2

    .line 28
    :cond_4
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p4

    goto :goto_4

    .line 29
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vw2;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 31
    iget v3, p1, Landroidx/navigation/c;->t:I

    .line 32
    invoke-virtual {p0, v3}, Landroidx/navigation/NavController;->c(I)Landroidx/navigation/c;

    move-result-object v3

    if-nez v3, :cond_7

    .line 33
    iget-object p1, p1, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    if-eqz p1, :cond_6

    .line 34
    new-instance v9, Lcom/shabakaty/downloader/vw2;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;)V

    .line 35
    invoke-virtual {p3, v9}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_7
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, p4

    goto :goto_5

    .line 37
    :cond_8
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vw2;

    .line 38
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 39
    :goto_5
    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 40
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vw2;

    .line 41
    iget-object v3, v3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 42
    instance-of v3, v3, Landroidx/navigation/d;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 43
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vw2;

    .line 44
    iget-object v3, v3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 45
    check-cast v3, Landroidx/navigation/d;

    .line 46
    iget v4, p1, Landroidx/navigation/c;->t:I

    .line 47
    invoke-virtual {v3, v4, v0}, Landroidx/navigation/d;->u(IZ)Landroidx/navigation/c;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 48
    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vw2;

    .line 49
    iget-object v3, v3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 50
    iget v3, v3, Landroidx/navigation/c;->t:I

    .line 51
    invoke-virtual {p0, v3, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    .line 52
    :cond_9
    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vw2;

    .line 54
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 55
    iget-object p3, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    if-eq p1, p3, :cond_b

    .line 56
    :cond_a
    new-instance p1, Lcom/shabakaty/downloader/vw2;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v5, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;)V

    .line 57
    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 58
    :cond_b
    new-instance p1, Lcom/shabakaty/downloader/vw2;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {p4, p2}, Landroidx/navigation/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;)V

    .line 60
    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz p3, :cond_e

    .line 61
    iget-boolean p1, p3, Landroidx/navigation/g;->a:Z

    if-eqz p1, :cond_e

    .line 62
    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vw2;

    if-eqz p1, :cond_d

    .line 63
    iput-object p2, p1, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    :cond_d
    const/4 v0, 0x1

    .line 64
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->q()V

    if-nez v1, :cond_f

    if-nez p4, :cond_f

    if-eqz v0, :cond_10

    .line 65
    :cond_f
    invoke-virtual {p0}, Landroidx/navigation/NavController;->b()Z

    :cond_10
    return-void
.end method

.method public k()Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    .line 3
    iget v2, v0, Landroidx/navigation/c;->t:I

    .line 4
    iget-object v0, v0, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_d

    .line 5
    iget v4, v0, Landroidx/navigation/d;->A:I

    if-eq v4, v2, :cond_c

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v4, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    const-string v5, "android-support-nav:controller:deepLinkIntent"

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    iget-object v4, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    new-instance v6, Lcom/shabakaty/downloader/tk1;

    iget-object v7, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    .line 11
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/tk1;-><init>(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {v4, v6}, Landroidx/navigation/d;->m(Lcom/shabakaty/downloader/tk1;)Landroidx/navigation/c$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 13
    iget-object v6, v4, Landroidx/navigation/c$a;->r:Landroidx/navigation/c;

    .line 14
    iget-object v4, v4, Landroidx/navigation/c$a;->s:Landroid/os/Bundle;

    .line 15
    invoke-virtual {v6, v4}, Landroidx/navigation/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    :cond_0
    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 18
    instance-of v6, v4, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 19
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    :goto_1
    const v7, 0x10008000

    .line 24
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Landroidx/navigation/NavController;->g()Landroidx/navigation/d;

    move-result-object v7

    .line 26
    iget v0, v0, Landroidx/navigation/c;->t:I

    const-string v8, "android-support-nav:controller:deepLinkIds"

    if-eqz v7, :cond_7

    .line 27
    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    invoke-virtual {v9, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 29
    :cond_3
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    .line 30
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/c;

    .line 31
    iget v12, v11, Landroidx/navigation/c;->t:I

    if-ne v12, v0, :cond_4

    move-object v10, v11

    goto :goto_2

    .line 32
    :cond_4
    instance-of v12, v11, Landroidx/navigation/d;

    if-eqz v12, :cond_3

    .line 33
    check-cast v11, Landroidx/navigation/d;

    .line 34
    new-instance v12, Landroidx/navigation/d$a;

    invoke-direct {v12, v11}, Landroidx/navigation/d$a;-><init>(Landroidx/navigation/d;)V

    .line 35
    :goto_3
    invoke-virtual {v12}, Landroidx/navigation/d$a;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v12}, Landroidx/navigation/d$a;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/c;

    .line 36
    invoke-virtual {v9, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    .line 37
    invoke-virtual {v10}, Landroidx/navigation/c;->h()[I

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_4

    .line 38
    :cond_6
    invoke-static {v4, v0}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Navigation destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found in the navigation graph "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_4
    const-string v0, "android-support-nav:controller:deepLinkExtras"

    .line 40
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v6, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_9

    if-nez v7, :cond_8

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setDestination() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/jl4;

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/jl4;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/jl4;->d(Landroid/content/Intent;)Lcom/shabakaty/downloader/jl4;

    .line 47
    :goto_5
    iget-object v2, v0, Lcom/shabakaty/downloader/jl4;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 48
    iget-object v2, v0, Lcom/shabakaty/downloader/jl4;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 49
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 50
    :cond_a
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jl4;->l()V

    .line 51
    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_b
    return v1

    .line 53
    :cond_c
    iget v2, v0, Landroidx/navigation/c;->t:I

    .line 54
    iget-object v0, v0, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    goto/16 :goto_0

    :cond_d
    return v3

    .line 55
    :cond_e
    invoke-virtual {p0}, Landroidx/navigation/NavController;->l()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    .line 3
    iget v0, v0, Landroidx/navigation/c;->t:I

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->m(IZ)Z

    move-result v0

    return v0
.end method

.method public m(IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->n(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(IZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vw2;

    .line 6
    iget-object v3, v3, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 7
    iget-object v5, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    .line 8
    iget-object v6, v3, Landroidx/navigation/c;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v6}, Landroidx/navigation/i;->d(Ljava/lang/String;)Landroidx/navigation/h;

    move-result-object v5

    if-nez p2, :cond_2

    .line 10
    iget v6, v3, Landroidx/navigation/c;->t:I

    if-eq v6, p1, :cond_3

    .line 11
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    iget v3, v3, Landroidx/navigation/c;->t:I

    if-ne v3, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    .line 13
    iget-object p2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/h;

    .line 16
    invoke-virtual {v0}, Landroidx/navigation/h;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/vw2;

    .line 18
    iget-object v0, p2, Lcom/shabakaty/downloader/vw2;->u:Landroidx/lifecycle/g;

    .line 19
    iget-object v0, v0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/e$c;

    .line 20
    sget-object v2, Landroidx/lifecycle/e$c;->t:Landroidx/lifecycle/e$c;

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    .line 23
    iput-object v0, p2, Lcom/shabakaty/downloader/vw2;->y:Landroidx/lifecycle/e$c;

    .line 24
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vw2;->b()V

    .line 25
    :cond_7
    iget-object v0, p0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    if-eqz v0, :cond_8

    .line 26
    iget-object p2, p2, Lcom/shabakaty/downloader/vw2;->w:Ljava/util/UUID;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/xw2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/r35;

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p2}, Lcom/shabakaty/downloader/r35;->a()V

    :cond_8
    const/4 p2, 0x1

    goto :goto_1

    .line 29
    :cond_9
    invoke-virtual {p0}, Landroidx/navigation/NavController;->q()V

    return p2
.end method

.method public o(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/navigation/f;

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/f;-><init>(Landroid/content/Context;Landroidx/navigation/i;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/f;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/f;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/navigation/f;->c(I)Landroidx/navigation/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    return-void
.end method

.method public p(Landroidx/navigation/d;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    iget v1, v1, Landroidx/navigation/c;->t:I

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    :cond_0
    move-object/from16 v1, p1

    .line 4
    iput-object v1, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    .line 5
    iget-object v1, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v3, "android-support-nav:controller:navigatorState:names"

    .line 6
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, v0, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    invoke-virtual {v4, v3}, Landroidx/navigation/i;->d(Ljava/lang/String;)Landroidx/navigation/h;

    move-result-object v4

    .line 9
    iget-object v5, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v4, v3}, Landroidx/navigation/h;->c(Landroid/os/Bundle;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const-string v3, " cannot be found from the current destination "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 12
    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v1, v7

    .line 13
    check-cast v8, Lcom/shabakaty/downloader/ww2;

    .line 14
    iget v9, v8, Lcom/shabakaty/downloader/ww2;->s:I

    .line 15
    invoke-virtual {v0, v9}, Landroidx/navigation/NavController;->c(I)Landroidx/navigation/c;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 16
    iget-object v13, v8, Lcom/shabakaty/downloader/ww2;->t:Landroid/os/Bundle;

    if-eqz v13, :cond_3

    .line 17
    iget-object v9, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 18
    :cond_3
    new-instance v9, Lcom/shabakaty/downloader/vw2;

    iget-object v11, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v14, v0, Landroidx/navigation/NavController;->i:Lcom/shabakaty/downloader/rh2;

    iget-object v15, v0, Landroidx/navigation/NavController;->j:Lcom/shabakaty/downloader/xw2;

    .line 19
    iget-object v10, v8, Lcom/shabakaty/downloader/ww2;->r:Ljava/util/UUID;

    .line 20
    iget-object v8, v8, Lcom/shabakaty/downloader/ww2;->u:Landroid/os/Bundle;

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v17, v8

    .line 21
    invoke-direct/range {v10 .. v17}, Lcom/shabakaty/downloader/vw2;-><init>(Landroid/content/Context;Landroidx/navigation/c;Landroid/os/Bundle;Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/xw2;Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 22
    iget-object v8, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v8, v9}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iget-object v1, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 24
    iget v2, v8, Lcom/shabakaty/downloader/ww2;->s:I

    .line 25
    invoke-static {v1, v2}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Restoring the Navigation back stack failed: destination "

    invoke-static {v4, v1, v3}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->q()V

    .line 29
    iput-object v4, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    .line 30
    :cond_6
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 31
    iget-boolean v1, v0, Landroidx/navigation/NavController;->g:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_20

    .line 32
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_e

    .line 33
    :cond_7
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, "android-support-nav:controller:deepLinkIds"

    .line 34
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    goto :goto_2

    :cond_8
    move-object v7, v4

    .line 35
    :goto_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_9

    const-string v9, "android-support-nav:controller:deepLinkExtras"

    .line 36
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_3

    :cond_9
    move-object v6, v4

    :goto_3
    if-eqz v6, :cond_a

    .line 37
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_a
    if-eqz v7, :cond_b

    .line 38
    array-length v6, v7

    if-nez v6, :cond_c

    :cond_b
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 39
    iget-object v6, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    new-instance v9, Lcom/shabakaty/downloader/tk1;

    invoke-direct {v9, v1}, Lcom/shabakaty/downloader/tk1;-><init>(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {v6, v9}, Landroidx/navigation/d;->m(Lcom/shabakaty/downloader/tk1;)Landroidx/navigation/c$a;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 41
    iget-object v7, v6, Landroidx/navigation/c$a;->r:Landroidx/navigation/c;

    .line 42
    invoke-virtual {v7}, Landroidx/navigation/c;->h()[I

    move-result-object v9

    .line 43
    iget-object v6, v6, Landroidx/navigation/c$a;->s:Landroid/os/Bundle;

    .line 44
    invoke-virtual {v7, v6}, Landroidx/navigation/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 45
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v7, v9

    :cond_c
    if-eqz v7, :cond_1f

    .line 46
    array-length v6, v7

    if-nez v6, :cond_d

    goto/16 :goto_e

    .line 47
    :cond_d
    iget-object v6, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    const/4 v9, 0x0

    .line 48
    :goto_4
    array-length v10, v7

    if-ge v9, v10, :cond_13

    .line 49
    aget v10, v7, v9

    if-nez v9, :cond_f

    .line 50
    iget-object v11, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    .line 51
    iget v12, v11, Landroidx/navigation/c;->t:I

    if-ne v12, v10, :cond_e

    goto :goto_5

    :cond_e
    move-object v11, v4

    goto :goto_5

    .line 52
    :cond_f
    invoke-virtual {v6, v10}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v11

    :goto_5
    if-nez v11, :cond_10

    .line 53
    iget-object v6, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v6, v10}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 54
    :cond_10
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_12

    .line 55
    check-cast v11, Landroidx/navigation/d;

    .line 56
    :goto_6
    iget v6, v11, Landroidx/navigation/d;->A:I

    .line 57
    invoke-virtual {v11, v6}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v6

    instance-of v6, v6, Landroidx/navigation/d;

    if-eqz v6, :cond_11

    .line 58
    iget v6, v11, Landroidx/navigation/d;->A:I

    .line 59
    invoke-virtual {v11, v6}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroidx/navigation/d;

    goto :goto_6

    :cond_11
    move-object v6, v11

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_13
    move-object v6, v4

    :goto_7
    if-eqz v6, :cond_14

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find destination "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NavController"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_14
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    .line 61
    invoke-virtual {v8, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v9, 0x10000000

    and-int/2addr v9, v6

    if-eqz v9, :cond_15

    const v10, 0x8000

    and-int/2addr v6, v10

    if-nez v6, :cond_15

    .line 63
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v3, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 65
    new-instance v6, Lcom/shabakaty/downloader/jl4;

    invoke-direct {v6, v3}, Lcom/shabakaty/downloader/jl4;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/jl4;->d(Landroid/content/Intent;)Lcom/shabakaty/downloader/jl4;

    .line 67
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jl4;->l()V

    .line 68
    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1e

    .line 69
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 70
    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_d

    :cond_15
    const-string v1, "Deep Linking failed: destination "

    if-eqz v9, :cond_18

    .line 71
    iget-object v5, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    .line 72
    iget-object v5, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    .line 73
    iget v5, v5, Landroidx/navigation/c;->t:I

    .line 74
    invoke-virtual {v0, v5, v2}, Landroidx/navigation/NavController;->n(IZ)Z

    :cond_16
    const/4 v5, 0x0

    .line 75
    :goto_8
    array-length v6, v7

    if-ge v5, v6, :cond_1e

    add-int/lit8 v6, v5, 0x1

    .line 76
    aget v5, v7, v5

    .line 77
    invoke-virtual {v0, v5}, Landroidx/navigation/NavController;->c(I)Landroidx/navigation/c;

    move-result-object v9

    if-eqz v9, :cond_17

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v17, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 78
    new-instance v5, Landroidx/navigation/g;

    move-object v10, v5

    move/from16 v12, v17

    move/from16 v16, v17

    invoke-direct/range {v10 .. v17}, Landroidx/navigation/g;-><init>(ZIZIIII)V

    .line 79
    invoke-virtual {v0, v9, v8, v5, v4}, Landroidx/navigation/NavController;->j(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    move v5, v6

    goto :goto_8

    .line 80
    :cond_17
    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_18
    iget-object v3, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    const/4 v5, 0x0

    .line 84
    :goto_9
    array-length v6, v7

    if-ge v5, v6, :cond_1d

    .line 85
    aget v6, v7, v5

    if-nez v5, :cond_19

    .line 86
    iget-object v9, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    goto :goto_a

    :cond_19
    invoke-virtual {v3, v6}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v9

    :goto_a
    if-eqz v9, :cond_1c

    .line 87
    array-length v6, v7

    sub-int/2addr v6, v2

    if-eq v5, v6, :cond_1b

    .line 88
    check-cast v9, Landroidx/navigation/d;

    .line 89
    :goto_b
    iget v3, v9, Landroidx/navigation/d;->A:I

    .line 90
    invoke-virtual {v9, v3}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/d;

    if-eqz v3, :cond_1a

    .line 91
    iget v3, v9, Landroidx/navigation/d;->A:I

    .line 92
    invoke-virtual {v9, v3}, Landroidx/navigation/d;->s(I)Landroidx/navigation/c;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/navigation/d;

    goto :goto_b

    :cond_1a
    move-object v3, v9

    goto :goto_c

    .line 93
    :cond_1b
    invoke-virtual {v9, v8}, Landroidx/navigation/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const/4 v11, 0x0

    const/16 v17, -0x1

    iget-object v10, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    .line 94
    iget v12, v10, Landroidx/navigation/c;->t:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 95
    new-instance v10, Landroidx/navigation/g;

    move-object/from16 p1, v10

    move/from16 v16, v17

    invoke-direct/range {v10 .. v17}, Landroidx/navigation/g;-><init>(ZIZIIII)V

    .line 96
    invoke-virtual {v0, v9, v6, v10, v4}, Landroidx/navigation/NavController;->j(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 97
    :cond_1c
    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Landroidx/navigation/c;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be found in graph "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1d
    iput-boolean v2, v0, Landroidx/navigation/NavController;->g:Z

    :cond_1e
    :goto_d
    const/4 v1, 0x1

    goto :goto_f

    :cond_1f
    :goto_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_20

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_22

    .line 100
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Landroidx/navigation/d;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroidx/navigation/NavController;->j(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    goto :goto_11

    .line 101
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->b()Z

    :cond_22
    :goto_11
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->n:Lcom/shabakaty/downloader/e63;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->f()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iput-boolean v2, v0, Lcom/shabakaty/downloader/e63;->a:Z

    return-void
.end method
