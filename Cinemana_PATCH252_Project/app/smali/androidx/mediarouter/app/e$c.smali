.class public Landroidx/mediarouter/app/e$c;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$c;->r:Landroidx/mediarouter/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/e$c;->r:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/mediarouter/app/e$c;->r:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->r:Landroidx/mediarouter/media/g;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/g;->k(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/e$c;->r:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    return-void
.end method
