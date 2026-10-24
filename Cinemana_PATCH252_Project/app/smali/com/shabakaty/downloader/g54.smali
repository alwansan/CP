.class public final Lcom/shabakaty/downloader/g54;
.super Lcom/shabakaty/downloader/wx3;
.source "SharedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/g54$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/wx3$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/g54;->b:Lcom/shabakaty/downloader/wx3$c;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wx3$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/g54$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/g54;->b:Lcom/shabakaty/downloader/wx3$c;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g54$a;-><init>(Lcom/shabakaty/downloader/wx3$c;)V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54;->b:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wx3$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54;->b:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/wx3$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g54;->b:Lcom/shabakaty/downloader/wx3$c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/wx3$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method
