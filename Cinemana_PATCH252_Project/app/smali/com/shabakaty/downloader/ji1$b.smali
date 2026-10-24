.class public Lcom/shabakaty/downloader/ji1$b;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/shabakaty/downloader/m63;


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
    iput-object p1, p0, Lcom/shabakaty/downloader/ji1$b;->a:Lcom/shabakaty/downloader/ji1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1$b;->a:Lcom/shabakaty/downloader/ji1;

    iget-object p1, p1, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, p1, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/q;->b(Lcom/shabakaty/downloader/sj1;Lcom/shabakaty/downloader/wi1;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ji1$b;->a:Lcom/shabakaty/downloader/ji1;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object p1

    const-string v0, "android:support:fragments"

    .line 4
    invoke-virtual {p1, v0}, Landroidx/savedstate/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ji1$b;->a:Lcom/shabakaty/downloader/ji1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ji1;->mFragments:Lcom/shabakaty/downloader/xi1;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    instance-of v1, v0, Lcom/shabakaty/downloader/s35;

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->c0(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
