.class public final Landroidx/mediarouter/media/g$h$a;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/c$b$a;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/c$b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Landroidx/mediarouter/media/c$b$a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
