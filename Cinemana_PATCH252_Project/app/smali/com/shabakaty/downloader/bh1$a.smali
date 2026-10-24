.class public final Lcom/shabakaty/downloader/bh1$a;
.super Ljava/lang/Object;
.source "FlowableToListSingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/lf4;

.field public t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y74;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bh1$a;->r:Lcom/shabakaty/downloader/y74;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/bh1$a;->t:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->r:Lcom/shabakaty/downloader/y74;

    iget-object v1, p0, Lcom/shabakaty/downloader/bh1$a;->t:Ljava/util/Collection;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->t:Ljava/util/Collection;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

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
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->t:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    iput-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bh1$a;->s:Lcom/shabakaty/downloader/lf4;

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
