.class public Lcom/shabakaty/downloader/s33;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/n33;

.field public final synthetic s:Lcom/onesignal/f0;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s33;->s:Lcom/onesignal/f0;

    iput-object p2, p0, Lcom/shabakaty/downloader/s33;->r:Lcom/shabakaty/downloader/n33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s33;->s:Lcom/onesignal/f0;

    .line 3
    iget-object v0, v0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/s33;->r:Lcom/shabakaty/downloader/n33;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/t33;->e(Lcom/shabakaty/downloader/n33;)V

    return-void
.end method
