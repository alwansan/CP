.class public final Landroidx/mediarouter/app/e$e;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic d:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/e;->X:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    iget-object p1, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->c()V

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->i()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    iget-object v1, v0, Landroidx/mediarouter/app/e;->V:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/app/e;->W:Landroidx/mediarouter/app/e$e;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->d(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/e$e;->d:Landroidx/mediarouter/app/e;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/e;->V:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method
