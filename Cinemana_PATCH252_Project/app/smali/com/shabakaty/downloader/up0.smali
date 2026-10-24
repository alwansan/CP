.class public Lcom/shabakaty/downloader/up0;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/d85;

.field public final synthetic s:Lcom/shabakaty/downloader/vp0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vp0;Lcom/shabakaty/downloader/d85;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/up0;->s:Lcom/shabakaty/downloader/vp0;

    iput-object p2, p0, Lcom/shabakaty/downloader/up0;->r:Lcom/shabakaty/downloader/d85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/vp0;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/up0;->r:Lcom/shabakaty/downloader/d85;

    iget-object v4, v4, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/up0;->s:Lcom/shabakaty/downloader/vp0;

    iget-object v0, v0, Lcom/shabakaty/downloader/vp0;->a:Lcom/shabakaty/downloader/zq1;

    new-array v1, v2, [Lcom/shabakaty/downloader/d85;

    iget-object v2, p0, Lcom/shabakaty/downloader/up0;->r:Lcom/shabakaty/downloader/d85;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zq1;->e([Lcom/shabakaty/downloader/d85;)V

    return-void
.end method
