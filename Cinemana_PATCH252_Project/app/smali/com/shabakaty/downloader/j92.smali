.class public abstract Lcom/shabakaty/downloader/j92;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j92$a;,
        Lcom/shabakaty/downloader/j92$d;,
        Lcom/shabakaty/downloader/j92$e;,
        Lcom/shabakaty/downloader/j92$f;,
        Lcom/shabakaty/downloader/j92$c;,
        Lcom/shabakaty/downloader/j92$b;,
        Lcom/shabakaty/downloader/j92$g;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/shabakaty/downloader/j92$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Lcom/shabakaty/downloader/j92$b;

.field public s:Lcom/shabakaty/downloader/j92$g;

.field public t:Lcom/shabakaty/downloader/j92$a;

.field public u:Z

.field public final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/j92$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j92;->w:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/j92;->u:Z

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j92;->t:Lcom/shabakaty/downloader/j92$a;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j92$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/j92$a;-><init>(Lcom/shabakaty/downloader/j92;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/j92;->t:Lcom/shabakaty/downloader/j92$a;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j92$g;->b()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/j92;->t:Lcom/shabakaty/downloader/j92$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public abstract b(Landroid/content/Intent;)V
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lcom/shabakaty/downloader/j92;->t:Lcom/shabakaty/downloader/j92$a;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/j92;->a(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/j92;->u:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/j92$g;->a()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/j92;->r:Lcom/shabakaty/downloader/j92$b;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/j92$f;

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/j92$f;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/j92$f;-><init>(Lcom/shabakaty/downloader/j92;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/j92;->r:Lcom/shabakaty/downloader/j92$b;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    goto :goto_1

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/shabakaty/downloader/j92;->r:Lcom/shabakaty/downloader/j92$b;

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/shabakaty/downloader/j92;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/j92;->w:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/j92$g;

    if-nez v4, :cond_2

    if-ge v0, v2, :cond_1

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/j92$c;

    invoke-direct {v4, p0, v1}, Lcom/shabakaty/downloader/j92$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 9
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t be here without a job id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/j92;->u:Z

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/j92$g;->a()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/j92;->s:Lcom/shabakaty/downloader/j92$g;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/j92$g;->c()V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/j92;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/shabakaty/downloader/j92$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Lcom/shabakaty/downloader/j92$d;-><init>(Lcom/shabakaty/downloader/j92;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/j92;->a(Z)V

    .line 6
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method
