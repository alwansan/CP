.class public Lcom/shabakaty/downloader/dq2$d$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dq2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/TextView;

.field public final synthetic e:Lcom/shabakaty/downloader/dq2$d;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq2$d;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq2$d$c;->e:Lcom/shabakaty/downloader/dq2$d;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dq2$d$c;->a:Landroid/view/View;

    const v0, 0x7f0a02da

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a02dc

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d$c;->c:Landroid/widget/ProgressBar;

    const v1, 0x7f0a02db

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/shabakaty/downloader/dq2$d$c;->d:Landroid/widget/TextView;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/mediarouter/app/h;->l(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    return-void
.end method
