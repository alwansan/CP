.class public Lcom/shabakaty/downloader/de3;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fe3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fe3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/de3;->r:Lcom/shabakaty/downloader/fe3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/de3;->r:Lcom/shabakaty/downloader/fe3;

    iget-object p1, p1, Lcom/shabakaty/downloader/fe3;->d:Lcom/shabakaty/downloader/fe3$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fe3$a;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    return-void
.end method
