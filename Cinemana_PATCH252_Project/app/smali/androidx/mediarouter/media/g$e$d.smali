.class public final Landroidx/mediarouter/media/g$e$d;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat;

.field public b:Landroidx/media/a;

.field public final synthetic c:Landroidx/mediarouter/media/g$e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g$e;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/g$e$d;->c:Landroidx/mediarouter/media/g$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/mediarouter/media/g$e$d;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e$d;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/g$e$d;->c:Landroidx/mediarouter/media/g$e;

    iget-object v1, v1, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    iget v1, v1, Landroidx/mediarouter/media/o$a;->d:I

    .line 3
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->e(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/mediarouter/media/g$e$d;->b:Landroidx/media/a;

    :cond_0
    return-void
.end method
