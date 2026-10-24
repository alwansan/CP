.class public Landroidx/lifecycle/i$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/i$a;->r:Landroidx/lifecycle/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/i$a;->r:Landroidx/lifecycle/i;

    .line 2
    iget v1, v0, Landroidx/lifecycle/i;->s:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Landroidx/lifecycle/i;->t:Z

    .line 4
    iget-object v0, v0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_PAUSE:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i$a;->r:Landroidx/lifecycle/i;

    .line 6
    iget v1, v0, Landroidx/lifecycle/i;->r:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/lifecycle/i;->t:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    sget-object v3, Landroidx/lifecycle/e$b;->ON_STOP:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    .line 8
    iput-boolean v2, v0, Landroidx/lifecycle/i;->u:Z

    :cond_1
    return-void
.end method
