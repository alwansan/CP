.class public final Landroidx/mediarouter/app/b$j;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field public final synthetic d:Landroidx/mediarouter/app/b;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/b;->g0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    iget-object p1, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    invoke-virtual {p1}, Landroidx/mediarouter/app/b;->p()V

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/b;->o(Z)V

    return-void
.end method

.method public b(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    iput-object p1, v0, Landroidx/mediarouter/app/b;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/b;->o(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    iget-object v1, v0, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/app/b;->e0:Landroidx/mediarouter/app/b$j;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->d(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/b$j;->d:Landroidx/mediarouter/app/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/b;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method
