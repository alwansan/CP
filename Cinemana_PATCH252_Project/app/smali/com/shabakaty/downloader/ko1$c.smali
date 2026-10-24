.class public Lcom/shabakaty/downloader/ko1$c;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ko1;->f(ZLcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/rn1;Lcom/shabakaty/downloader/ar$a;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pi2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ko1$c;->r:Lcom/shabakaty/downloader/pi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko1$c;->r:Lcom/shabakaty/downloader/pi2;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
