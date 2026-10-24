.class public final Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final parent:Landroid/view/ViewGroup;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;->parent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
