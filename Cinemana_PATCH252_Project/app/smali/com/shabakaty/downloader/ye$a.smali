.class public final Lcom/shabakaty/downloader/ye$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/shabakaty/downloader/ye;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/ye;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zm0;)V
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/te;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/te;-><init>(Lcom/shabakaty/downloader/ye$a;Lcom/shabakaty/downloader/zm0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
