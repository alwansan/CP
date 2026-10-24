.class public Lcom/shabakaty/downloader/u80;
.super Ljava/lang/Object;
.source "ComponentHolder.java"


# static fields
.field public static final f:Lcom/shabakaty/downloader/u80;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/bw1;

.field public e:Lcom/shabakaty/downloader/jm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u80;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u80;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/jm0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u80;->e:Lcom/shabakaty/downloader/jm0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/u80;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/u80;->e:Lcom/shabakaty/downloader/jm0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/zl2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/u80;->e:Lcom/shabakaty/downloader/jm0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u80;->e:Lcom/shabakaty/downloader/jm0;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/bw1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u80;->d:Lcom/shabakaty/downloader/bw1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/u80;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/u80;->d:Lcom/shabakaty/downloader/bw1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/lo0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo0;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/u80;->d:Lcom/shabakaty/downloader/bw1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u80;->d:Lcom/shabakaty/downloader/bw1;

    check-cast v0, Lcom/shabakaty/downloader/lo0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/lo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo0;-><init>()V

    return-object v0
.end method
