.class public final Lcom/shabakaty/downloader/rb4;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/shabakaty/downloader/no2;


# instance fields
.field public final r:Lcom/shabakaty/downloader/w30;

.field public s:Z

.field public t:J

.field public u:J

.field public v:Lcom/shabakaty/downloader/ad3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rb4;->r:Lcom/shabakaty/downloader/w30;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/ad3;->d:Lcom/shabakaty/downloader/ad3;

    iput-object p1, p0, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/rb4;->t:J

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/rb4;->r:Lcom/shabakaty/downloader/w30;

    invoke-interface {p1}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/rb4;->u:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rb4;->r:Lcom/shabakaty/downloader/w30;

    invoke-interface {v0}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/rb4;->u:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/rb4;->s:Z

    :cond_0
    return-void
.end method

.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ad3;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    return-void
.end method

.method public l()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/rb4;->t:J

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/rb4;->r:Lcom/shabakaty/downloader/w30;

    invoke-interface {v2}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shabakaty/downloader/rb4;->u:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    iget v5, v4, Lcom/shabakaty/downloader/ad3;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iget v4, v4, Lcom/shabakaty/downloader/ad3;->c:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method
