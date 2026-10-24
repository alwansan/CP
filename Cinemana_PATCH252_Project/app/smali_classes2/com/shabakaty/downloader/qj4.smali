.class public final Lcom/shabakaty/downloader/qj4;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

# interfaces
.implements Lcom/shabakaty/downloader/kf2;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kf2<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qj4;->r:Lcom/shabakaty/downloader/rm1;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/zu4;->a:Lcom/shabakaty/downloader/zu4;

    iput-object p1, p0, Lcom/shabakaty/downloader/qj4;->s:Ljava/lang/Object;

    .line 4
    iput-object p0, p0, Lcom/shabakaty/downloader/qj4;->t:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w02;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/w02;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qj4;->s:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/zu4;->a:Lcom/shabakaty/downloader/zu4;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qj4;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/qj4;->s:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/qj4;->r:Lcom/shabakaty/downloader/rm1;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 6
    iput-object v2, p0, Lcom/shabakaty/downloader/qj4;->s:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/qj4;->r:Lcom/shabakaty/downloader/rm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qj4;->s:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/zu4;->a:Lcom/shabakaty/downloader/zu4;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
