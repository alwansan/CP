.class public final Lcom/shabakaty/downloader/uo1$b;
.super Lcom/shabakaty/downloader/af2;
.source "GeneralNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uo1;->e(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/cx2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uo1$b;->r:Landroidx/navigation/NavController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cx2;

    const-string v0, "$this$navOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/uo1$b;->r:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Landroidx/navigation/c;->t:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cx2;->b(I)V

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/vo1;->r:Lcom/shabakaty/downloader/vo1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cx2;->a(Lcom/shabakaty/downloader/tm1;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
