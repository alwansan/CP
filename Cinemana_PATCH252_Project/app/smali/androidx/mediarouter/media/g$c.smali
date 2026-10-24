.class public final Landroidx/mediarouter/media/g$c;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/g;

.field public final b:Landroidx/mediarouter/media/g$b;

.field public c:Landroidx/mediarouter/media/f;

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/media/g$c;->a:Landroidx/mediarouter/media/g;

    .line 3
    iput-object p2, p0, Landroidx/mediarouter/media/g$c;->b:Landroidx/mediarouter/media/g$b;

    .line 4
    sget-object p1, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    iput-object p1, p0, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    return-void
.end method
