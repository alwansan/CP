.class public Landroidx/mediarouter/media/m$a$a;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/m$a;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/media/m$a;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/m$a$a;->r:Landroidx/mediarouter/media/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/m$a$a;->r:Landroidx/mediarouter/media/m$a;

    iget-object v1, v0, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    .line 2
    iget-object v2, v1, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v2, v0, :cond_1

    .line 3
    sget-boolean v0, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service connection died"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRouteProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroidx/mediarouter/media/m;->t()V

    :cond_1
    return-void
.end method
