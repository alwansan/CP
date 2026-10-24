.class public final Lcom/shabakaty/downloader/a54$a;
.super Ljava/lang/Object;
.source "SharedFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ou0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/a54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/a54;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/a54<",
            "*>;"
        }
    .end annotation
.end field

.field public s:J

.field public final t:Ljava/lang/Object;

.field public final u:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a54;JLjava/lang/Object;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/a54<",
            "*>;J",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a54$a;->r:Lcom/shabakaty/downloader/a54;

    iput-wide p2, p0, Lcom/shabakaty/downloader/a54$a;->s:J

    iput-object p4, p0, Lcom/shabakaty/downloader/a54$a;->t:Ljava/lang/Object;

    iput-object p5, p0, Lcom/shabakaty/downloader/a54$a;->u:Lcom/shabakaty/downloader/ud0;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a54$a;->r:Lcom/shabakaty/downloader/a54;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/shabakaty/downloader/a54$a;->s:J

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    iget-wide v2, p0, Lcom/shabakaty/downloader/a54$a;->s:J

    sget-object v4, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v3, v2

    .line 6
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    aget-object v2, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, p0, :cond_1

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    sget-object v2, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    .line 9
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aput-object v2, v1, v3

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a54;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
