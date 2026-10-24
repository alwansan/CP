.class public final Lcom/shabakaty/downloader/m02;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lcom/shabakaty/downloader/yz3;


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/u74;

.field public final c:Lcom/shabakaty/downloader/u74;

.field public d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/m02;->d:J

    .line 3
    iput-wide p5, p0, Lcom/shabakaty/downloader/m02;->a:J

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/u74;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    .line 5
    new-instance p5, Lcom/shabakaty/downloader/u74;

    invoke-direct {p5, p2}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    iput-object p5, p0, Lcom/shabakaty/downloader/m02;->c:Lcom/shabakaty/downloader/u74;

    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/u74;->a(J)V

    .line 7
    invoke-virtual {p5, p3, p4}, Lcom/shabakaty/downloader/u74;->a(J)V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x186a0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/m02;->a:J

    return-wide v0
.end method

.method public d(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m02;->c:Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1, v1}, Lcom/shabakaty/downloader/sy4;->c(Lcom/shabakaty/downloader/u74;JZZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(J)Lcom/shabakaty/downloader/vz3$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1, v1}, Lcom/shabakaty/downloader/sy4;->c(Lcom/shabakaty/downloader/u74;JZZ)I

    move-result v0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/xz3;

    iget-object v3, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/shabakaty/downloader/m02;->c:Lcom/shabakaty/downloader/u74;

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/m02;->b:Lcom/shabakaty/downloader/u74;

    .line 5
    iget p2, p1, Lcom/shabakaty/downloader/u74;->a:I

    sub-int/2addr p2, v1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/xz3;

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v3

    iget-object p1, p0, Lcom/shabakaty/downloader/m02;->c:Lcom/shabakaty/downloader/u74;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v0

    invoke-direct {p2, v3, v4, v0, v1}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/vz3$a;

    invoke-direct {p1, v2, p2}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;Lcom/shabakaty/downloader/xz3;)V

    return-object p1

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/vz3$a;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    return-object p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/m02;->d:J

    return-wide v0
.end method
