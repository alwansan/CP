.class public Landroidx/media/a$b;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/a;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media/a;


# direct methods
.method public constructor <init>(Landroidx/media/a;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/a$b;->a:Landroidx/media/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media/a$b;->a:Landroidx/media/a;

    check-cast v0, Landroidx/mediarouter/media/j;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/media/j;->g:Landroidx/mediarouter/media/g$e$d;

    iget-object v1, v1, Landroidx/mediarouter/media/g$e$d;->c:Landroidx/mediarouter/media/g$e;

    iget-object v1, v1, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    new-instance v2, Landroidx/mediarouter/media/i;

    invoke-direct {v2, v0, p1}, Landroidx/mediarouter/media/i;-><init>(Landroidx/mediarouter/media/j;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media/a$b;->a:Landroidx/media/a;

    check-cast v0, Landroidx/mediarouter/media/j;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/media/j;->g:Landroidx/mediarouter/media/g$e$d;

    iget-object v1, v1, Landroidx/mediarouter/media/g$e$d;->c:Landroidx/mediarouter/media/g$e;

    iget-object v1, v1, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    new-instance v2, Landroidx/mediarouter/media/h;

    invoke-direct {v2, v0, p1}, Landroidx/mediarouter/media/h;-><init>(Landroidx/mediarouter/media/j;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
