.class public Lcom/onesignal/f0$a$a;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/f0$a;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/f0$a;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/f0$a$a;->r:Lcom/onesignal/f0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/f0$a$a;->r:Lcom/onesignal/f0$a;

    iget-object v1, v0, Lcom/onesignal/f0$a;->a:Lcom/shabakaty/downloader/n33;

    iget-wide v2, v0, Lcom/onesignal/f0$a;->c:J

    .line 3
    iput-wide v2, v1, Lcom/shabakaty/downloader/n33;->d:J

    .line 4
    iget-object v0, v0, Lcom/onesignal/f0$a;->e:Lcom/onesignal/f0;

    .line 5
    iget-object v0, v0, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/f0$a$a;->r:Lcom/onesignal/f0$a;

    iget-object v1, v1, Lcom/onesignal/f0$a;->a:Lcom/shabakaty/downloader/n33;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/t33;->i(Lcom/shabakaty/downloader/n33;)V

    return-void
.end method
