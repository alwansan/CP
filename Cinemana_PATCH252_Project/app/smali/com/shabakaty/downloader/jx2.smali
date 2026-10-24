.class public final Lcom/shabakaty/downloader/jx2;
.super Lcom/shabakaty/downloader/af2;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
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
.field public final synthetic r:Landroidx/navigation/g;

.field public final synthetic s:Landroidx/navigation/fragment/NavHostFragment;


# direct methods
.method public constructor <init>(Landroidx/navigation/g;Landroidx/navigation/fragment/NavHostFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jx2;->r:Landroidx/navigation/g;

    iput-object p2, p0, Lcom/shabakaty/downloader/jx2;->s:Landroidx/navigation/fragment/NavHostFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cx2;

    const-string v0, "$this$navOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jx2;->r:Landroidx/navigation/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Landroidx/navigation/g;->a:Z

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p1, Lcom/shabakaty/downloader/cx2;->b:Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 8
    :goto_1
    iput-boolean v0, p1, Lcom/shabakaty/downloader/cx2;->b:Z

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/jx2;->s:Landroidx/navigation/fragment/NavHostFragment;

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->o(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 10
    :cond_2
    iget v0, v0, Landroidx/navigation/c;->t:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/jx2;->r:Landroidx/navigation/g;

    if-nez v0, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget v0, v0, Landroidx/navigation/g;->b:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_4

    .line 15
    iget v0, p1, Lcom/shabakaty/downloader/cx2;->c:I

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cx2;->b(I)V

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/ix2;

    iget-object v1, p0, Lcom/shabakaty/downloader/jx2;->r:Landroidx/navigation/g;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ix2;-><init>(Landroidx/navigation/g;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cx2;->a(Lcom/shabakaty/downloader/tm1;)V

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
