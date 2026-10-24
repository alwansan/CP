.class public final Lcom/shabakaty/downloader/pp4$c$a;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pp4$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/pp4$b;

.field public final synthetic s:Lcom/shabakaty/downloader/pp4$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pp4$c;Lcom/shabakaty/downloader/pp4$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pp4$c$a;->s:Lcom/shabakaty/downloader/pp4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/pp4$c$a;->r:Lcom/shabakaty/downloader/pp4$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp4$c$a;->r:Lcom/shabakaty/downloader/pp4$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shabakaty/downloader/pp4$b;->u:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pp4$c$a;->s:Lcom/shabakaty/downloader/pp4$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/pp4$c;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lcom/shabakaty/downloader/pp4$c$a;->r:Lcom/shabakaty/downloader/pp4$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
