.class public final Lcom/shabakaty/epom_view/ui/EpomView$d;
.super Lcom/shabakaty/downloader/af2;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/f41$e;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/f41$e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/j71;->u()Lcom/shabakaty/downloader/j71$a;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/s64;

    .line 6
    iget p1, p1, Lcom/shabakaty/downloader/s64;->D:F

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const-string v2, "binding.muteUnMuteButton"

    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_3

    .line 11
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/j71;->u()Lcom/shabakaty/downloader/j71$a;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    check-cast p1, Lcom/shabakaty/downloader/s64;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/s64;->s0(F)V

    .line 12
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    const v1, 0x7f08022e

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 15
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const v0, 0x7f1202a5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez p1, :cond_8

    move-object p1, v0

    goto :goto_7

    .line 20
    :cond_8
    invoke-interface {p1}, Lcom/shabakaty/downloader/j71;->u()Lcom/shabakaty/downloader/j71$a;

    move-result-object p1

    :goto_7
    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    check-cast p1, Lcom/shabakaty/downloader/s64;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/s64;->s0(F)V

    .line 21
    :goto_8
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    const v1, 0x7f080255

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 24
    :goto_9
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 26
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView$d;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    const v0, 0x7f1202b9

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 27
    :goto_b
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
