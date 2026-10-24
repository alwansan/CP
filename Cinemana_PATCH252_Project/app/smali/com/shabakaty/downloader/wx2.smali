.class public Lcom/shabakaty/downloader/wx2;
.super Ljava/lang/Object;
.source "NavigationUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Landroidx/navigation/NavController;

.field public final synthetic s:Lcom/shabakaty/downloader/m9;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wx2;->r:Landroidx/navigation/NavController;

    iput-object p2, p0, Lcom/shabakaty/downloader/wx2;->s:Lcom/shabakaty/downloader/m9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/wx2;->r:Landroidx/navigation/NavController;

    iget-object v0, p0, Lcom/shabakaty/downloader/wx2;->s:Lcom/shabakaty/downloader/m9;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/m9;->b:Lcom/shabakaty/downloader/w73;

    .line 3
    invoke-virtual {p1}, Landroidx/navigation/NavController;->e()Landroidx/navigation/c;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/m9;->a:Ljava/util/Set;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/xx2;->a(Landroidx/navigation/c;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/w73;->a()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavController;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/shabakaty/downloader/m9;->c:Lcom/shabakaty/downloader/m9$b;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/m9$b;->a()Z

    :cond_2
    :goto_0
    return-void
.end method
