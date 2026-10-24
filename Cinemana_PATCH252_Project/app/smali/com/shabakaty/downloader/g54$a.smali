.class public final Lcom/shabakaty/downloader/g54$a;
.super Lcom/shabakaty/downloader/wx3$c;
.source "SharedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/g54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/g54$a$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/wx3$c;

.field public final s:Lcom/shabakaty/downloader/c90;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wx3$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3$c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g54$a;->r:Lcom/shabakaty/downloader/wx3$c;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/c90;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wx3$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/g54$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/g54$a$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/g54$a$a;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/nu0;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/g54$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wx3$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/g54$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/shabakaty/downloader/wx3$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 8
    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/g54$a$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/mu0;

    if-eq p2, v0, :cond_3

    .line 9
    sget-object p3, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-ne p2, p3, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p4, v0, Lcom/shabakaty/downloader/g54$a$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4, p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    iget-object p2, v0, Lcom/shabakaty/downloader/g54$a$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/mu0;

    if-ne p2, p3, :cond_3

    .line 13
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_3
    :goto_1
    return-object v0

    .line 14
    :cond_4
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54$a;->s:Lcom/shabakaty/downloader/c90;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/c90;->s:Z

    return v0
.end method
