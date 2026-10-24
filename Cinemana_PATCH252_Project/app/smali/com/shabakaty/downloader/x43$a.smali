.class public final Lcom/shabakaty/downloader/x43$a;
.super Ljava/lang/Object;
.source "ObservableDoOnEach.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/q53<",
        "TT;>;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/j2;

.field public final v:Lcom/shabakaty/downloader/j2;

.field public w:Lcom/shabakaty/downloader/mu0;

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x43$a;->r:Lcom/shabakaty/downloader/q53;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/x43$a;->s:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/x43$a;->t:Lcom/shabakaty/downloader/xc0;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/x43$a;->u:Lcom/shabakaty/downloader/j2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/x43$a;->v:Lcom/shabakaty/downloader/j2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x43$a;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->u:Lcom/shabakaty/downloader/j2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x43$a;->x:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->v:Lcom/shabakaty/downloader/j2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/x43$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x43$a;->x:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x43$a;->x:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/x43$a;->t:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/d90;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    .line 8
    :try_start_1
    iget-object p1, p0, Lcom/shabakaty/downloader/x43$a;->v:Lcom/shabakaty/downloader/j2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x43$a;->w:Lcom/shabakaty/downloader/mu0;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/x43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x43$a;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->s:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x43$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x43$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v0

    return v0
.end method
