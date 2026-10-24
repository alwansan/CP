.class public final Lcom/shabakaty/downloader/aa$k;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/aa;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/e;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/aa;->P(Landroid/view/Menu;)Lcom/shabakaty/downloader/aa$j;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    iget v2, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    invoke-virtual {p2, v2, p1, v0}, Lcom/shabakaty/downloader/aa;->G(ILcom/shabakaty/downloader/aa$j;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    invoke-virtual {p2, p1, v1}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa;->Q:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/aa$k;->r:Lcom/shabakaty/downloader/aa;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
