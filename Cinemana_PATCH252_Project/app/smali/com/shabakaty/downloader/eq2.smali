.class public Lcom/shabakaty/downloader/eq2;
.super Ljava/lang/Object;
.source "MediaRouteDynamicChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Landroidx/mediarouter/media/g$h;

.field public final synthetic s:Lcom/shabakaty/downloader/dq2$d$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq2$d$c;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/eq2;->s:Lcom/shabakaty/downloader/dq2$d$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/eq2;->r:Landroidx/mediarouter/media/g$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/eq2;->s:Lcom/shabakaty/downloader/dq2$d$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d$c;->e:Lcom/shabakaty/downloader/dq2$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    iget-object v0, p0, Lcom/shabakaty/downloader/eq2;->r:Landroidx/mediarouter/media/g$h;

    iput-object v0, p1, Lcom/shabakaty/downloader/dq2;->z:Landroidx/mediarouter/media/g$h;

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->m()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/eq2;->s:Lcom/shabakaty/downloader/dq2$d$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/eq2;->s:Lcom/shabakaty/downloader/dq2$d$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d$c;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
