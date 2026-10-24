.class public final Lcom/shabakaty/downloader/fu1$d;
.super Ljava/lang/Object;
.source "HomeFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/v84;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fu1;-><init>(Lcom/shabakaty/downloader/wt1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fu1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fu1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fu1$d;->r:Lcom/shabakaty/downloader/fu1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 3

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fu1$d;->r:Lcom/shabakaty/downloader/fu1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->a:Lcom/shabakaty/downloader/wt1;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v2, p2, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/wt1;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    return-void
.end method

.method public g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 3

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fu1$d;->r:Lcom/shabakaty/downloader/fu1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->a:Lcom/shabakaty/downloader/wt1;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v2, p2, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/wt1;->P(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    return-void
.end method
