.class public abstract Lcom/shabakaty/downloader/k15;
.super Landroidx/databinding/ViewDataBinding;
.source "VideoInfoSeasonsLayoutBinding.java"


# instance fields
.field public final M:Lcom/google/android/material/tabs/TabLayout;

.field public final N:Landroidx/viewpager2/widget/ViewPager2;

.field public O:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public P:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/k15;->N:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public abstract G(Lcom/shabakaty/downloader/xv2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract H(Lcom/shabakaty/downloader/xv2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;)V"
        }
    .end annotation
.end method
