.class public final Lcom/shabakaty/downloader/sf1$a;
.super Ljava/lang/Object;
.source "FlowableAnySingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sf1;
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
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/y74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y74<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/lf4;

.field public u:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sf1$a;->r:Lcom/shabakaty/downloader/y74;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sf1$a;->s:Lcom/shabakaty/downloader/ye3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->r:Lcom/shabakaty/downloader/y74;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sf1$a;->s:Lcom/shabakaty/downloader/ye3;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ye3;->a(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sf1$a;->u:Z

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/sf1$a;->r:Lcom/shabakaty/downloader/y74;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 10
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sf1$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1$a;->t:Lcom/shabakaty/downloader/lf4;

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
