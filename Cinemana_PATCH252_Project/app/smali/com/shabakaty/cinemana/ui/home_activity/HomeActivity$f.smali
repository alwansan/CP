.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$f;
.super Lcom/shabakaty/downloader/af2;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroidx/fragment/app/FragmentContainerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$f;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$f;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->N:Landroidx/fragment/app/FragmentContainerView;

    const-string v1, "binding.fragmentContainer"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
