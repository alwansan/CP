.class public final Lcom/shabakaty/downloader/rz0;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "FragmentsPagerAdapters.kt"


# instance fields
.field public final i:Lcom/shabakaty/downloader/kf2;

.field public final j:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/rz0$b;->r:Lcom/shabakaty/downloader/rz0$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rz0;->i:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/rz0$a;->r:Lcom/shabakaty/downloader/rz0$a;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rz0;->j:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/rz0;->i:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/bx0;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/rz0;->j:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ew0;

    :goto_0
    return-object p1
.end method
