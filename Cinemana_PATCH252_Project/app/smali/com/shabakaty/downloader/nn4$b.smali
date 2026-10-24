.class public final Lcom/shabakaty/downloader/nn4$b;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nn4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field public g:Lcom/shabakaty/downloader/k4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hw3;->r:Lcom/shabakaty/downloader/hw3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/k4;->g:Lcom/shabakaty/downloader/k4;

    iput-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/k4$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/shabakaty/downloader/k4$a;->e:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public b(J)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v1, p0, Lcom/shabakaty/downloader/nn4$b;->d:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, -0x1

    cmp-long v6, p1, v3

    if-eqz v6, :cond_6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v1, v6

    if-eqz v8, :cond_0

    cmp-long v6, p1, v1

    if-ltz v6, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget v1, v0, Lcom/shabakaty/downloader/k4;->e:I

    .line 3
    :goto_0
    iget v2, v0, Lcom/shabakaty/downloader/k4;->b:I

    if-ge v1, v2, :cond_5

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v2

    iget-wide v6, v2, Lcom/shabakaty/downloader/k4$a;->a:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v2

    iget-wide v6, v2, Lcom/shabakaty/downloader/k4$a;->a:J

    cmp-long v2, v6, p1

    if-lez v2, :cond_4

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v2

    .line 7
    iget v6, v2, Lcom/shabakaty/downloader/k4$a;->b:I

    if-eq v6, v5, :cond_3

    .line 8
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/k4$a;->a(I)I

    move-result v6

    .line 9
    iget v2, v2, Lcom/shabakaty/downloader/k4$a;->b:I

    if-ge v6, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget p1, v0, Lcom/shabakaty/downloader/k4;->b:I

    if-ge v1, p1, :cond_6

    move v5, v1

    :cond_6
    :goto_3
    return v5
.end method

.method public c(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/shabakaty/downloader/k4$a;->a:J

    return-wide v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k4$a;->a(I)I

    move-result p1

    return p1
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/shabakaty/downloader/k4$a;->g:Z

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/nn4$b;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/nn4$b;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/shabakaty/downloader/nn4$b;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/nn4$b;->c:I

    iget v3, p1, Lcom/shabakaty/downloader/nn4$b;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/nn4$b;->d:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/nn4$b;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/nn4$b;->e:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/nn4$b;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/nn4$b;->f:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-object p1, p1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    .line 5
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/shabakaty/downloader/nn4$b;
    .locals 10

    .line 1
    sget-object v8, Lcom/shabakaty/downloader/k4;->g:Lcom/shabakaty/downloader/k4;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/nn4$b;->g(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/shabakaty/downloader/k4;Z)Lcom/shabakaty/downloader/nn4$b;

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/shabakaty/downloader/k4;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nn4$b;->a:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 4
    iput-wide p4, p0, Lcom/shabakaty/downloader/nn4$b;->d:J

    .line 5
    iput-wide p6, p0, Lcom/shabakaty/downloader/nn4$b;->e:J

    .line 6
    iput-object p8, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    .line 7
    iput-boolean p9, p0, Lcom/shabakaty/downloader/nn4$b;->f:Z

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/nn4$b;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-wide v0, p0, Lcom/shabakaty/downloader/nn4$b;->d:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/nn4$b;->e:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/nn4$b;->f:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k4;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method
