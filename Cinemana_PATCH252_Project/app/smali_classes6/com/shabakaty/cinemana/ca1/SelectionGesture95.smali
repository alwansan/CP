.class public final Lcom/shabakaty/cinemana/ca1/SelectionGesture95;
.super Ljava/lang/Object;
.source "SelectionGesture95.java"


# static fields
.field public static final HOLD_MS:J = 0x3e8L


# instance fields
.field private active:Z

.field private moved:Z

.field private slop:F

.field private started:J

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->active:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->moved:Z

    return-void
.end method

.method public down(FFJF)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->x:F

    iput p2, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->y:F

    iput-wide p3, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->started:J

    iput p5, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->slop:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->active:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->moved:Z

    return-void
.end method

.method public move(FF)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->slop:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->y:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->slop:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->moved:Z

    :cond_1
    return-void
.end method

.method public ready(J)Z
    .locals 3

    .line 8
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->moved:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->started:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tap()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->moved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
