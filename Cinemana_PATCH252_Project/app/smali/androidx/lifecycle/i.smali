.class public Landroidx/lifecycle/i;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Lcom/shabakaty/downloader/rh2;


# static fields
.field public static final z:Landroidx/lifecycle/i;


# instance fields
.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/os/Handler;

.field public final w:Landroidx/lifecycle/g;

.field public x:Ljava/lang/Runnable;

.field public y:Landroidx/lifecycle/k$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0}, Landroidx/lifecycle/i;-><init>()V

    sput-object v0, Landroidx/lifecycle/i;->z:Landroidx/lifecycle/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/i;->r:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/i;->s:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/i;->t:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/i;->u:Z

    .line 6
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    .line 7
    new-instance v0, Landroidx/lifecycle/i$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i$a;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->x:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Landroidx/lifecycle/i$b;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i$b;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->y:Landroidx/lifecycle/k$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/i;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/i;->s:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/i;->t:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_RESUME:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/i;->t:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/i;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/i;->r:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/i;->u:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    sget-object v1, Landroidx/lifecycle/e$b;->ON_START:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/i;->u:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/i;->w:Landroidx/lifecycle/g;

    return-object v0
.end method
