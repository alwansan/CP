.class public Lcom/shabakaty/downloader/yr$f$b;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yr$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public r:Ljava/util/concurrent/Executor;

.field public s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/yr$f;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yr$f;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yr$f$b;->t:Lcom/shabakaty/downloader/yr$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yr$f$b;->s:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yr$f$b;->r:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr$f$b;->r:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/yr$f$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
