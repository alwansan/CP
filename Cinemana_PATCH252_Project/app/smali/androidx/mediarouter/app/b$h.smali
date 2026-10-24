.class public final Landroidx/mediarouter/app/b$h;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/b;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x1020019

    if-eq p1, v1, :cond_6

    const v2, 0x102001a

    if-ne p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f0a02cb

    if-ne p1, v1, :cond_5

    .line 2
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v1, p1, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroidx/mediarouter/app/b;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_9

    .line 3
    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->r:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/mediarouter/app/b;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object p1, p1, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$d;->a()V

    const v3, 0x7f12019a

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Landroidx/mediarouter/app/b;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object p1, p1, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$d;->c()V

    const v3, 0x7f12019c

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 8
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Landroidx/mediarouter/app/b;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object p1, p1, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$d;->b()V

    const v3, 0x7f12019b

    .line 10
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object p1, p1, Landroidx/mediarouter/app/b;->y0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    const/16 p1, 0x4000

    .line 11
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 12
    iget-object v0, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v0, v0, Landroidx/mediarouter/app/b;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 13
    const-class v0, Landroidx/mediarouter/app/b$h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v1, v1, Landroidx/mediarouter/app/b;->v:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v0, v0, Landroidx/mediarouter/app/b;->y0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0a02c9

    if-ne p1, v0, :cond_9

    .line 16
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    iget-object v2, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v2, v2, Landroidx/mediarouter/app/b;->u:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v2}, Landroidx/mediarouter/media/g$h;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    iget-object v2, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    iget-object v2, v2, Landroidx/mediarouter/app/b;->s:Landroidx/mediarouter/media/g;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x2

    :cond_7
    invoke-virtual {v2, v0}, Landroidx/mediarouter/media/g;->k(I)V

    .line 19
    :cond_8
    iget-object p1, p0, Landroidx/mediarouter/app/b$h;->r:Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    :cond_9
    :goto_3
    return-void
.end method
