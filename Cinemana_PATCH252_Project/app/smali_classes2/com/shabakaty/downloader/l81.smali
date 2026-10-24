.class public Lcom/shabakaty/downloader/l81;
.super Lcom/shabakaty/downloader/s61;
.source "Dispatcher.kt"


# instance fields
.field public s:Lcom/shabakaty/downloader/re0;

.field public final t:I

.field public final u:I

.field public final v:J

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 6

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget p1, Lcom/shabakaty/downloader/ll4;->b:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 2
    sget p2, Lcom/shabakaty/downloader/ll4;->c:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    const-string p1, "DefaultDispatcher"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 3
    sget-wide v3, Lcom/shabakaty/downloader/ll4;->d:J

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/s61;-><init>()V

    iput v1, p0, Lcom/shabakaty/downloader/l81;->t:I

    iput v2, p0, Lcom/shabakaty/downloader/l81;->u:I

    iput-wide v3, p0, Lcom/shabakaty/downloader/l81;->v:J

    iput-object v5, p0, Lcom/shabakaty/downloader/l81;->w:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/re0;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/re0;-><init>(IIJLjava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/l81;->s:Lcom/shabakaty/downloader/re0;

    sget-object v0, Lcom/shabakaty/downloader/re0;->y:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vz2;->r:Lcom/shabakaty/downloader/vz2;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/shabakaty/downloader/re0;->d(Ljava/lang/Runnable;Lcom/shabakaty/downloader/al4;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p1, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/r51;->d0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
