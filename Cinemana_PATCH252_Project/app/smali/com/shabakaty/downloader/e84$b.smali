.class public final Lcom/shabakaty/downloader/e84$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e84;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public r:I

.field public s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/e84;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e84;Lcom/shabakaty/downloader/e84$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e84$b;->s:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    iget-object v0, v0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/yq2$a;->b(ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e84$b;->s:Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/e84;->B:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/e84;->C:Z

    return v0
.end method

.method public h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e84$b;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/e84;->C:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->D:[B

    if-nez v3, :cond_0

    .line 3
    iput v2, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    .line 4
    :cond_0
    iget v3, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    const/4 v4, -0x4

    if-ne v3, v2, :cond_1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ao;->u(I)V

    return v4

    :cond_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x3

    return p1

    .line 6
    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/e84;->D:[B

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/ao;->u(I)V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p2, Lcom/shabakaty/downloader/bn0;->v:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget p1, p1, Lcom/shabakaty/downloader/e84;->E:I

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/bn0;->J(I)V

    .line 11
    iget-object p1, p2, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/shabakaty/downloader/e84$b;->t:Lcom/shabakaty/downloader/e84;

    iget-object v0, p2, Lcom/shabakaty/downloader/e84;->D:[B

    const/4 v1, 0x0

    iget p2, p2, Lcom/shabakaty/downloader/e84;->E:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    .line 12
    iput v2, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    :cond_5
    return v4

    .line 13
    :cond_6
    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    iput-object p2, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    .line 14
    iput v6, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    const/4 p1, -0x5

    return p1
.end method

.method public i(J)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e84$b;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/e84$b;->r:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
