.class public final Lcom/shabakaty/downloader/yf1$a;
.super Ljava/lang/Object;
.source "FlowableDoOnLifecycle.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yf1;
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
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/lf4;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/gl2;

.field public final u:Lcom/shabakaty/downloader/j2;

.field public v:Lcom/shabakaty/downloader/lf4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/gl2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;",
            "Lcom/shabakaty/downloader/gl2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yf1$a;->s:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/yf1$a;->u:Lcom/shabakaty/downloader/j2;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/yf1$a;->t:Lcom/shabakaty/downloader/gl2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yf1$a;->u:Lcom/shabakaty/downloader/j2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->s:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object p1, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/e31;->n(Ljava/lang/Throwable;Lcom/shabakaty/downloader/ef4;)V

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
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->t:Lcom/shabakaty/downloader/gl2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/yf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
