.class public Lcom/facebook/ProgressNoopOutputStream;
.super Ljava/io/OutputStream;
.source "ProgressNoopOutputStream.java"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/os/Handler;

.field public t:Lcom/facebook/GraphRequest;

.field public u:Lcom/facebook/RequestProgress;

.field public v:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->r:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->s:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->t:Lcom/facebook/GraphRequest;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/RequestProgress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->u:Lcom/facebook/RequestProgress;

    return-void
.end method

.method public b(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->u:Lcom/facebook/RequestProgress;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/RequestProgress;

    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->s:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->t:Lcom/facebook/GraphRequest;

    invoke-direct {v0, v1, v2}, Lcom/facebook/RequestProgress;-><init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->u:Lcom/facebook/RequestProgress;

    .line 3
    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->r:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->t:Lcom/facebook/GraphRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->u:Lcom/facebook/RequestProgress;

    .line 5
    iget-wide v1, v0, Lcom/facebook/RequestProgress;->f:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/facebook/RequestProgress;->f:J

    .line 6
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->v:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/facebook/ProgressNoopOutputStream;->v:I

    return-void
.end method

.method public write(I)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->b(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->b(J)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    int-to-long p1, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ProgressNoopOutputStream;->b(J)V

    return-void
.end method
