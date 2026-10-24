.class public final Lcom/shabakaty/cinemana/ca1/SeekGesture95;
.super Ljava/lang/Object;
.source "SeekGesture95.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static target(JFIIJ)J
    .locals 2

    .line 3
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p3, p4

    mul-float p2, p2, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p2, p2, p3

    float-to-long p2, p2

    add-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p4, p5, p2

    if-lez p4, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr p5, v0

    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method
