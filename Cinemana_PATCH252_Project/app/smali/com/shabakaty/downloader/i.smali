.class public abstract Lcom/shabakaty/downloader/i;
.super Ljava/lang/Object;
.source "AbstractAppBarOnDestinationChangedListener.java"

# interfaces
.implements Landroidx/navigation/NavController$b;


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/w73;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/shabakaty/downloader/n01;

.field public v:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/m9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/i;->r:Landroid/content/Context;

    .line 3
    iget-object p1, p2, Lcom/shabakaty/downloader/m9;->a:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/i;->s:Ljava/util/Set;

    .line 5
    iget-object p1, p2, Lcom/shabakaty/downloader/m9;->b:Lcom/shabakaty/downloader/w73;

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/i;->t:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/i;->t:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method
