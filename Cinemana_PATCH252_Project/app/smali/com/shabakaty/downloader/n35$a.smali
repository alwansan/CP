.class public final Lcom/shabakaty/downloader/n35$a;
.super Ljava/lang/Object;
.source "LifecycleFrameLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/n35;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Landroidx/lifecycle/g;

.field public final s:Landroidx/lifecycle/e$b;

.field public t:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V
    .locals 1

    const-string v0, "lifecycleRegistry"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n35$a;->r:Landroidx/lifecycle/g;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n35$a;->s:Landroidx/lifecycle/e$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/n35$a;->t:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n35$a;->r:Landroidx/lifecycle/g;

    iget-object v1, p0, Lcom/shabakaty/downloader/n35$a;->s:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/n35$a;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method
