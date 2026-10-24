.class public Lcom/shabakaty/downloader/sf0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/uk4<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/Boolean;

.field public final synthetic s:Lcom/shabakaty/downloader/tf0$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf0$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/sf0;->r:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FirebaseCrashlytics"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Deleting cached crash reports..."

    .line 3
    invoke-static {v2, v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/lf0;->b:Lcom/shabakaty/downloader/lf0;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf0;->g()Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/io/File;

    .line 8
    :cond_1
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kg0;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->q:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v3}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    .line 17
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Sending cached crash reports..."

    .line 18
    invoke-static {v2, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 21
    iget-object v1, v1, Lcom/shabakaty/downloader/tf0;->b:Lcom/shabakaty/downloader/jl0;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/jl0;->g:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object v1, v0, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 25
    iget-object v1, v1, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    .line 26
    iget-object v1, v1, Lcom/shabakaty/downloader/hf0;->a:Ljava/util/concurrent/Executor;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0$a;->r:Lcom/shabakaty/downloader/uk4;

    new-instance v2, Lcom/shabakaty/downloader/rf0;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/rf0;-><init>(Lcom/shabakaty/downloader/sf0;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uk4;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    :goto_2
    return-object v0

    .line 28
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An invalid data collection token was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
