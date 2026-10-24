.class public final Lcom/shabakaty/downloader/r54$b;
.super Lcom/shabakaty/downloader/af2;
.source "ShowMoreViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/r54;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/r54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r54;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/r54$b;->r:Lcom/shabakaty/downloader/r54;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$b;->r:Lcom/shabakaty/downloader/r54;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->content:Ljava/util/List;

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mj;->b(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/r54$b;->r:Lcom/shabakaty/downloader/r54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o54;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->title:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/o54;->R(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
