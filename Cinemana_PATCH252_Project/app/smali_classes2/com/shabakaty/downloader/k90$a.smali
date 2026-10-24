.class public final Lcom/shabakaty/downloader/k90$a;
.super Lcom/shabakaty/downloader/wx3$c;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/gi2;

.field public final s:Lcom/shabakaty/downloader/c90;

.field public final t:Lcom/shabakaty/downloader/gi2;

.field public final u:Lcom/shabakaty/downloader/k90$c;

.field public volatile v:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k90$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3$c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k90$a;->u:Lcom/shabakaty/downloader/k90$c;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/gi2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/gi2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/k90$a;->r:Lcom/shabakaty/downloader/gi2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/c90;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/k90$a;->s:Lcom/shabakaty/downloader/c90;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/gi2;

    invoke-direct {v1}, Lcom/shabakaty/downloader/gi2;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/k90$a;->t:Lcom/shabakaty/downloader/gi2;

    .line 6
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gi2;->b(Lcom/shabakaty/downloader/mu0;)Z

    .line 7
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/gi2;->b(Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/k90$a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k90$a;->u:Lcom/shabakaty/downloader/k90$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/shabakaty/downloader/k90$a;->r:Lcom/shabakaty/downloader/gi2;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/hz2;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/nu0;)Lcom/shabakaty/downloader/ux3;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/k90$a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k90$a;->u:Lcom/shabakaty/downloader/k90$c;

    iget-object v5, p0, Lcom/shabakaty/downloader/k90$a;->s:Lcom/shabakaty/downloader/c90;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/hz2;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/nu0;)Lcom/shabakaty/downloader/ux3;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/k90$a;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/k90$a;->v:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k90$a;->t:Lcom/shabakaty/downloader/gi2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi2;->h()V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/k90$a;->v:Z

    return v0
.end method
