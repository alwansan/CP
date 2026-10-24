.class public abstract Lcom/shabakaty/downloader/qi5;
.super Lcom/shabakaty/downloader/fq1;


# instance fields
.field public u:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/fj5;)V

    return-void
.end method


# virtual methods
.method public final K1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qi5;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->M1()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qi5;->u:Z

    return-void
.end method

.method public abstract M1()V
.end method

.method public final N1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->K1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
