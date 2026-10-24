.class public Landroidx/mediarouter/app/e$a;
.super Landroid/os/Handler;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$a;->a:Landroidx/mediarouter/app/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/e$a;->a:Landroidx/mediarouter/app/e;

    iget-object v0, p1, Landroidx/mediarouter/app/e;->I:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Landroidx/mediarouter/app/e;->I:Landroidx/mediarouter/media/g$h;

    .line 4
    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->l()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/e$a;->a:Landroidx/mediarouter/app/e;

    invoke-virtual {p1}, Landroidx/mediarouter/app/e;->k()V

    :cond_2
    :goto_0
    return-void
.end method
