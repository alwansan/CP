.class public final Lcom/shabakaty/downloader/aa$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/aa;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$c;->r:Lcom/shabakaty/downloader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/e;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/aa$c;->r:Lcom/shabakaty/downloader/aa;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/aa;->H(Landroidx/appcompat/view/menu/e;)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$c;->r:Lcom/shabakaty/downloader/aa;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
