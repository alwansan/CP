.class public final Lcom/shabakaty/downloader/ly5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/dl0;


# instance fields
.field public final r:Ljava/lang/Object;

.field public s:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c00;J)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    .line 9
    iput-wide p2, p0, Lcom/shabakaty/downloader/ly5;->s:J

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x30;I)V
    .locals 2

    const-string v0, "null reference"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D(JJ)J
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/c00;

    iget-object p3, p3, Lcom/shabakaty/downloader/c00;->d:[J

    long-to-int p2, p1

    aget-wide p1, p3, p2

    return-wide p1
.end method

.method public G0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public I0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public K(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public O(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public O0(J)J
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/c00;

    iget p1, p1, Lcom/shabakaty/downloader/c00;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public P0(JJ)J
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/c00;

    iget p1, p1, Lcom/shabakaty/downloader/c00;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public S(J)Lcom/shabakaty/downloader/qm3;
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/qm3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/c00;

    iget-object v1, v1, Lcom/shabakaty/downloader/c00;->c:[J

    long-to-int p2, p1

    aget-wide v2, v1, p2

    check-cast v0, Lcom/shabakaty/downloader/c00;

    iget-object p1, v0, Lcom/shabakaty/downloader/c00;->b:[I

    aget p1, p1, p2

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/qm3;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/x30;

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/ly5;->s:J

    return-void
.end method

.method public b(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ly5;->s:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/x30;

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v3, p0, Lcom/shabakaty/downloader/ly5;->s:J

    sub-long/2addr v0, v3

    cmp-long v3, v0, p1

    if-lez v3, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/c00;

    iget-object v0, v0, Lcom/shabakaty/downloader/c00;->e:[J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    iget-wide v0, p0, Lcom/shabakaty/downloader/ly5;->s:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public u0(JJ)J
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/ly5;->r:Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/c00;

    iget-wide v0, p0, Lcom/shabakaty/downloader/ly5;->s:J

    add-long/2addr p1, v0

    .line 2
    iget-object p3, p3, Lcom/shabakaty/downloader/c00;->e:[J

    const/4 p4, 0x1

    invoke-static {p3, p1, p2, p4, p4}, Lcom/shabakaty/downloader/sy4;->f([JJZZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
