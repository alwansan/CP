.class public final Lcom/shabakaty/downloader/ux2;
.super Ljava/lang/Object;
.source "NavigationListener.kt"

# interfaces
.implements Landroidx/navigation/NavController$b;


# instance fields
.field public final r:Lcom/shabakaty/downloader/c21;

.field public final s:Lcom/shabakaty/downloader/vx2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c21;Lcom/shabakaty/downloader/vx2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ux2;->r:Lcom/shabakaty/downloader/c21;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ux2;->s:Lcom/shabakaty/downloader/vx2;

    return-void
.end method


# virtual methods
.method public k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
    .locals 2

    const-string p3, "destination"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ux2;->r:Lcom/shabakaty/downloader/c21;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p3, Lcom/shabakaty/downloader/tx2;

    .line 4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/c21;->j(Landroidx/navigation/NavController;)Lcom/shabakaty/downloader/sy3;

    move-result-object v0

    .line 5
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/c21;->f(Landroidx/navigation/NavController;)Lcom/shabakaty/downloader/sy3;

    move-result-object v1

    .line 6
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/c21;->e(Landroidx/navigation/NavController;)Landroid/os/Bundle;

    move-result-object p1

    .line 7
    invoke-direct {p3, v0, v1, p1}, Lcom/shabakaty/downloader/tx2;-><init>(Lcom/shabakaty/downloader/sy3;Lcom/shabakaty/downloader/sy3;Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/ux2;->s:Lcom/shabakaty/downloader/vx2;

    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/vx2;->a(Lcom/shabakaty/downloader/tx2;)V

    return-void
.end method
