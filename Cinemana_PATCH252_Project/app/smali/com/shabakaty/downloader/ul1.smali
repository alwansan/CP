.class public final synthetic Lcom/shabakaty/downloader/ul1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wl1;

.field public final synthetic b:Lcom/shabakaty/downloader/h71$b;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wl1;Lcom/shabakaty/downloader/h71$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ul1;->a:Lcom/shabakaty/downloader/wl1;

    iput-object p2, p0, Lcom/shabakaty/downloader/ul1;->b:Lcom/shabakaty/downloader/h71$b;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    iget-object p1, p0, Lcom/shabakaty/downloader/ul1;->a:Lcom/shabakaty/downloader/wl1;

    iget-object p4, p0, Lcom/shabakaty/downloader/ul1;->b:Lcom/shabakaty/downloader/h71$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p4, Lcom/shabakaty/downloader/un0$b;

    .line 2
    iget-object p1, p4, Lcom/shabakaty/downloader/un0$b;->a:Lcom/shabakaty/downloader/un0;

    iget-object p1, p1, Lcom/shabakaty/downloader/un0;->x:Lcom/shabakaty/downloader/un0$c;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
