.class public Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/fragment/app/Fragment;

.field public final synthetic s:Landroidx/fragment/app/Fragment;

.field public final synthetic t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/ad;

.field public final synthetic v:Landroid/view/View;

.field public final synthetic w:Lcom/shabakaty/downloader/bl1;

.field public final synthetic x:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLcom/shabakaty/downloader/ad;Landroid/view/View;Lcom/shabakaty/downloader/bl1;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/w;->r:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/w;->s:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/w;->t:Z

    iput-object p4, p0, Landroidx/fragment/app/w;->u:Lcom/shabakaty/downloader/ad;

    iput-object p5, p0, Landroidx/fragment/app/w;->v:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/w;->w:Lcom/shabakaty/downloader/bl1;

    iput-object p7, p0, Landroidx/fragment/app/w;->x:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->r:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/w;->s:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/w;->t:Z

    iget-object v3, p0, Landroidx/fragment/app/w;->u:Lcom/shabakaty/downloader/ad;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/y;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLcom/shabakaty/downloader/ad;Z)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/w;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/w;->w:Lcom/shabakaty/downloader/bl1;

    iget-object v2, p0, Landroidx/fragment/app/w;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/bl1;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
