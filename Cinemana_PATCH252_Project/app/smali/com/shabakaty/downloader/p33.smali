.class public Lcom/shabakaty/downloader/p33;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/f0;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p33;->r:Lcom/onesignal/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/p33;->r:Lcom/onesignal/f0;

    .line 3
    iget-object v0, v0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    const-string v1, "notification"

    const-string v2, "notification_id"

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/t33;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
