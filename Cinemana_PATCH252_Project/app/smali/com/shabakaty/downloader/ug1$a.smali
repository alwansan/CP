.class public final Lcom/shabakaty/downloader/ug1$a;
.super Ljava/lang/Object;
.source "FlowableSkipWhile.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ug1;
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
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ug1$a;->s:Lcom/shabakaty/downloader/ye3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

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
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ug1$a;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->s:Lcom/shabakaty/downloader/ye3;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ye3;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ug1$a;->u:Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ug1$a;->t:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
