.class public Lcom/shabakaty/downloader/dq2$a;
.super Landroid/os/Handler;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dq2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dq2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq2$a;->a:Lcom/shabakaty/downloader/dq2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$a;->a:Lcom/shabakaty/downloader/dq2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/downloader/dq2;->B:J

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/dq2;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/dq2;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, v0, Lcom/shabakaty/downloader/dq2;->w:Lcom/shabakaty/downloader/dq2$d;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dq2$d;->f()V

    :goto_0
    return-void
.end method
