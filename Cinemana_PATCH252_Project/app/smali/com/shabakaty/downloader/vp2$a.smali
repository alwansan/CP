.class public Lcom/shabakaty/downloader/vp2$a;
.super Landroid/os/Handler;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vp2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vp2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vp2$a;->a:Lcom/shabakaty/downloader/vp2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/vp2$a;->a:Lcom/shabakaty/downloader/vp2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/downloader/vp2;->z:J

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vp2;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/vp2;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, v0, Lcom/shabakaty/downloader/vp2;->w:Lcom/shabakaty/downloader/vp2$c;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
