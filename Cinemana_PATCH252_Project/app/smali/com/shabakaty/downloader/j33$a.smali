.class public Lcom/shabakaty/downloader/j33$a;
.super Ljava/lang/Object;
.source "OSNotificationReceivedEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j33;-><init>(Lcom/onesignal/b0;Lcom/shabakaty/downloader/c33;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/j33;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j33;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/j33$a;->r:Lcom/shabakaty/downloader/j33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "Running complete from OSNotificationReceivedEvent timeout runnable!"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/j33$a;->r:Lcom/shabakaty/downloader/j33;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/j33;->d:Lcom/shabakaty/downloader/c33;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/j33;->a(Lcom/shabakaty/downloader/c33;)V

    return-void
.end method
