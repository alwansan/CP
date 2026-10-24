.class public Lcom/shabakaty/downloader/ji1$a;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/savedstate/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ji1;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ji1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ji1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ji1$a;->a:Lcom/shabakaty/downloader/ji1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1$a;->a:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ji1;->markFragmentsCreated()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1$a;->a:Lcom/shabakaty/downloader/ji1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ji1;->mFragmentLifecycleRegistry:Landroidx/lifecycle/g;

    sget-object v2, Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ji1$a;->a:Lcom/shabakaty/downloader/ji1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v1}, Landroidx/fragment/app/q;->d0()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android:support:fragments"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method
