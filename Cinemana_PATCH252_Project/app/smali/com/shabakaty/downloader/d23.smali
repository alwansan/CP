.class public Lcom/shabakaty/downloader/d23;
.super Ljava/lang/Object;
.source "OSDelayTaskController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d23$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final c:Lcom/shabakaty/downloader/b33;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b33;)V
    .locals 2

    const-string v0, "logger"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d23;->c:Lcom/shabakaty/downloader/b33;

    const/16 p1, 0x19

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/d23;->a:I

    .line 3
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/shabakaty/downloader/d23$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d23$a;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/d23;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method
