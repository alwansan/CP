.class public final Lcom/shabakaty/cinemana/ca1/Progress106;
.super Ljava/lang/Object;
.source "Progress106.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completed(JJZ)Z
    .locals 2

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Progress106;->valid(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p2, v0

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static member(JJ)Z
    .locals 4

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Progress106;->valid(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/shabakaty/cinemana/ca1/Progress106;->completed(JJZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static percent(JJ)I
    .locals 2

    .line 7
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    long-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static resume(JJ)J
    .locals 5

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Progress106;->member(JJ)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x3e8

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public static valid(JJ)Z
    .locals 3

    .line 4
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x3e8

    add-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
