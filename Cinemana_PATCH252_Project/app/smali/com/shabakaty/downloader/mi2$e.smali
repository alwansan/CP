.class public Lcom/shabakaty/downloader/mi2$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mi2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    iget-object v0, v0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    iget-object v0, v0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    iget-object v1, v1, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    iget-object v0, v0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    iget v2, v1, Lcom/shabakaty/downloader/mi2;->D:I

    if-gt v0, v2, :cond_0

    .line 6
    iget-object v0, v1, Lcom/shabakaty/downloader/mi2;->P:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/mi2$e;->r:Lcom/shabakaty/downloader/mi2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi2;->b()V

    :cond_0
    return-void
.end method
