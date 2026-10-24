.class public Lcom/shabakaty/downloader/ly$h;
.super Lcom/shabakaty/downloader/gq4;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ly;->l(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ly;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/ly$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ly$h;->a:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ly$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/l35;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ly$h;->a:Z

    return-void
.end method

.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ly$h;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ly$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/l35;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public onTransitionPause(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ly$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/l35;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ly$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/l35;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
