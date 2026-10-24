.class public Lcom/shabakaty/downloader/mj2$a;
.super Lcom/shabakaty/downloader/xv2;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/jj2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xv2<",
        "TD;>;",
        "Lcom/shabakaty/downloader/jj2$a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:Lcom/shabakaty/downloader/jj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;"
        }
    .end annotation
.end field

.field public d:Lcom/shabakaty/downloader/rh2;

.field public e:Lcom/shabakaty/downloader/mj2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj2$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public f:Lcom/shabakaty/downloader/jj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Lcom/shabakaty/downloader/jj2;Lcom/shabakaty/downloader/jj2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;",
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/mj2$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mj2$a;->b:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/mj2$a;->f:Lcom/shabakaty/downloader/jj2;

    .line 6
    iget-object p2, p3, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    if-nez p2, :cond_0

    .line 7
    iput-object p0, p3, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    .line 8
    iput p1, p3, Lcom/shabakaty/downloader/jj2;->a:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Z)Lcom/shabakaty/downloader/jj2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/jj2;->b()Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jj2;->d:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 6
    iput-object v2, p0, Lcom/shabakaty/downloader/mj2$a;->d:Lcom/shabakaty/downloader/rh2;

    .line 7
    iput-object v2, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    if-eqz p1, :cond_0

    .line 8
    iget-boolean v3, v0, Lcom/shabakaty/downloader/mj2$b;->b:Z

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/mj2$b;->a:Lcom/shabakaty/downloader/lj2$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    .line 11
    iget-object v4, v3, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    if-eqz v4, :cond_5

    if-ne v4, p0, :cond_4

    .line 12
    iput-object v2, v3, Lcom/shabakaty/downloader/jj2;->b:Lcom/shabakaty/downloader/jj2$a;

    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, v0, Lcom/shabakaty/downloader/mj2$b;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 14
    :cond_2
    iput-boolean v1, v3, Lcom/shabakaty/downloader/jj2;->e:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v3, Lcom/shabakaty/downloader/jj2;->c:Z

    .line 16
    iput-boolean p1, v3, Lcom/shabakaty/downloader/jj2;->d:Z

    .line 17
    iput-boolean p1, v3, Lcom/shabakaty/downloader/jj2;->f:Z

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->f:Lcom/shabakaty/downloader/jj2;

    return-object p1

    :cond_3
    return-object v3

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->d:Lcom/shabakaty/downloader/rh2;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/lj2$a;)Lcom/shabakaty/downloader/jj2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rh2;",
            "Lcom/shabakaty/downloader/lj2$a<",
            "TD;>;)",
            "Lcom/shabakaty/downloader/jj2<",
            "TD;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mj2$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/mj2$b;-><init>(Lcom/shabakaty/downloader/jj2;Lcom/shabakaty/downloader/lj2$a;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/mj2$a;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->d:Lcom/shabakaty/downloader/rh2;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    return-object p1
.end method

.method public onActive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jj2;->c:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jj2;->e:Z

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jj2;->d:Z

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/b06;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/b06;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jj2;->b()Z

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/pd$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/pd$a;-><init>(Lcom/shabakaty/downloader/pd;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/pd;->h:Lcom/shabakaty/downloader/pd$a;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pd;->d()V

    return-void
.end method

.method public onInactive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jj2;->c:Z

    return-void
.end method

.method public removeObserver(Lcom/shabakaty/downloader/r53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r53<",
            "-TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->d:Lcom/shabakaty/downloader/rh2;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->e:Lcom/shabakaty/downloader/mj2$b;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->f:Lcom/shabakaty/downloader/jj2;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/shabakaty/downloader/jj2;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/shabakaty/downloader/jj2;->c:Z

    .line 5
    iput-boolean v0, p1, Lcom/shabakaty/downloader/jj2;->d:Z

    .line 6
    iput-boolean v0, p1, Lcom/shabakaty/downloader/jj2;->f:Z

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/mj2$a;->f:Lcom/shabakaty/downloader/jj2;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "LoaderInfo{"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ei;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/mj2$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/mj2$a;->c:Lcom/shabakaty/downloader/jj2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/cl3;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
