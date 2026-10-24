.class public abstract Lcom/shabakaty/downloader/k92;
.super Lcom/shabakaty/downloader/k80;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ou0;
.implements Lcom/shabakaty/downloader/g02;


# instance fields
.field public u:Lcom/shabakaty/downloader/l92;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k80;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Lcom/shabakaty/downloader/tz2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k92;->u:Lcom/shabakaty/downloader/l92;

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/shabakaty/downloader/k92;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/m92;->g:Lcom/shabakaty/downloader/o21;

    .line 6
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, v1, Lcom/shabakaty/downloader/g02;

    if-eqz v0, :cond_3

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/g02;

    invoke-interface {v1}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ck2;->t()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "job"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/k92;->u:Lcom/shabakaty/downloader/l92;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final x()Lcom/shabakaty/downloader/l92;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k92;->u:Lcom/shabakaty/downloader/l92;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
