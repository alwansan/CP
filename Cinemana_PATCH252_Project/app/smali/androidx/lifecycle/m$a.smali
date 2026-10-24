.class public Landroidx/lifecycle/m$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final r:Landroidx/lifecycle/g;

.field public final s:Landroidx/lifecycle/e$b;

.field public t:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/m$a;->t:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/m$a;->r:Landroidx/lifecycle/g;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/m$a;->s:Landroidx/lifecycle/e$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/m$a;->t:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/m$a;->r:Landroidx/lifecycle/g;

    iget-object v1, p0, Landroidx/lifecycle/m$a;->s:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/m$a;->t:Z

    :cond_0
    return-void
.end method
