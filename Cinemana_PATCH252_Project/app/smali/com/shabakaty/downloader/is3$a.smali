.class public final Lcom/shabakaty/downloader/is3$a;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/is3;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/view/View;

.field public final synthetic s:Lcom/shabakaty/downloader/is3;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/shabakaty/downloader/is3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/is3$a;->r:Landroid/view/View;

    iput-object p2, p0, Lcom/shabakaty/downloader/is3$a;->s:Lcom/shabakaty/downloader/is3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/is3$a;->r:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/is3$a;->s:Lcom/shabakaty/downloader/is3;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/shabakaty/downloader/is3;->d:Lcom/shabakaty/downloader/tm1;

    return-void
.end method
