.class public Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field public final a:Lcom/facebook/GraphRequest;

.field public final b:Landroid/os/Handler;

.field public final c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/RequestProgress;->a:Lcom/facebook/GraphRequest;

    .line 3
    iput-object p1, p0, Lcom/facebook/RequestProgress;->b:Landroid/os/Handler;

    .line 4
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    sget-object p1, Lcom/facebook/FacebookSdk;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/facebook/RequestProgress;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-wide v3, p0, Lcom/facebook/RequestProgress;->d:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->e:J

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/RequestProgress;->a:Lcom/facebook/GraphRequest;

    .line 3
    iget-object v0, v0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/GraphRequest$Callback;

    .line 4
    iget-wide v5, p0, Lcom/facebook/RequestProgress;->f:J

    const-wide/16 v1, 0x0

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_1

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 6
    iget-object v7, p0, Lcom/facebook/RequestProgress;->b:Landroid/os/Handler;

    if-nez v7, :cond_0

    .line 7
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/facebook/GraphRequest$OnProgressCallback;->a(JJ)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v8, Lcom/facebook/RequestProgress$1;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :goto_0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->d:J

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->e:J

    :cond_1
    return-void
.end method
