.class public final Lcom/shabakaty/downloader/eo2$a;
.super Ljava/lang/Object;
.source "MaybePeek.java"

# interfaces
.implements Lcom/shabakaty/downloader/do2;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/eo2;
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
        "Lcom/shabakaty/downloader/do2<",
        "TT;>;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/do2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/eo2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/eo2<",
            "TT;>;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/mu0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/do2;Lcom/shabakaty/downloader/eo2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/eo2<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    sget-object v1, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/do2;->a()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eo2$a;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/eo2$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    sget-object v1, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/eo2$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/do2;->c(Lcom/shabakaty/downloader/mu0;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object p1, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do2;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 10
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/do2;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    iget-object v0, v0, Lcom/shabakaty/downloader/eo2;->w:Lcom/shabakaty/downloader/j2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    iget-object v0, v0, Lcom/shabakaty/downloader/eo2;->u:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/d90;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 4
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/do2;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eo2$a;->d()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v0

    return v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    sget-object v1, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->s:Lcom/shabakaty/downloader/eo2;

    iget-object v0, v0, Lcom/shabakaty/downloader/eo2;->t:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/eo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/eo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/do2;->onSuccess(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eo2$a;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/eo2$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method
