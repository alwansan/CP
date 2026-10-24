.class public final Lcom/shabakaty/downloader/bo2$a;
.super Ljava/lang/Object;
.source "MaybeFilterSingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bo2;
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
        "Lcom/shabakaty/downloader/y74<",
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

.field public final s:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/mu0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/do2;Lcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/bo2$a;->s:Lcom/shabakaty/downloader/ye3;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/do2;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/do2;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object v1, p0, Lcom/shabakaty/downloader/bo2$a;->t:Lcom/shabakaty/downloader/mu0;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v0

    return v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->s:Lcom/shabakaty/downloader/ye3;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ye3;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/do2;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/do2;->a()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2$a;->r:Lcom/shabakaty/downloader/do2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/do2;->b(Ljava/lang/Throwable;)V

    return-void
.end method
