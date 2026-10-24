.class public final Lcom/shabakaty/downloader/y90;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/y90$b;,
        Lcom/shabakaty/downloader/y90$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/shabakaty/downloader/m85;

.field public final d:Lcom/shabakaty/downloader/n12;

.field public final e:Lcom/shabakaty/downloader/fq1;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y90$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y90;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/y90;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y90;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/y90;->b:Ljava/util/concurrent/Executor;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/m85;->a:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/l85;

    invoke-direct {v0}, Lcom/shabakaty/downloader/l85;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/y90;->c:Lcom/shabakaty/downloader/m85;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/m12;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m12;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/y90;->d:Lcom/shabakaty/downloader/n12;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/fq1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/y90;->e:Lcom/shabakaty/downloader/fq1;

    .line 10
    iget p1, p1, Lcom/shabakaty/downloader/y90$a;->a:I

    iput p1, p0, Lcom/shabakaty/downloader/y90;->f:I

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Lcom/shabakaty/downloader/y90;->g:I

    const/16 p1, 0x14

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/y90;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
