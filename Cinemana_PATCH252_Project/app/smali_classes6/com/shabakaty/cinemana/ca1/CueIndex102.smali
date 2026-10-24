.class public final Lcom/shabakaty/cinemana/ca1/CueIndex102;
.super Ljava/lang/Object;
.source "CueIndex102.java"


# instance fields
.field public kept:I

.field public position:J

.field public seen:I

.field public timeUs:J

.field private track:I

.field private trackPosition:J

.field public final videoTrack:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->timeUs:J

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    .line 8
    const/4 v2, -0x1

    iput v2, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->track:I

    .line 9
    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->trackPosition:J

    .line 10
    iput p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->videoTrack:I

    return-void
.end method


# virtual methods
.method public end(I)Z
    .locals 6

    .line 21
    const/16 v0, 0xb7

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->track:I

    iget v3, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->videoTrack:I

    if-ne v0, v3, :cond_0

    iget-wide v3, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    iget-wide v3, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->trackPosition:J

    iput-wide v3, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    .line 22
    :cond_0
    const/16 v0, 0xbb

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    return v3

    .line 23
    :cond_1
    iget p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->seen:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->seen:I

    .line 24
    iget-wide v4, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->timeUs:J

    cmp-long p1, v4, v1

    if-ltz p1, :cond_2

    iget-wide v4, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    cmp-long p1, v4, v1

    if-ltz p1, :cond_2

    const/4 v3, 0x1

    .line 25
    :cond_2
    if-eqz v3, :cond_3

    iget p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->kept:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->kept:I

    .line 26
    :cond_3
    return v3
.end method

.method public integer(IJ)V
    .locals 1

    .line 16
    const/16 v0, 0xb3

    if-ne p1, v0, :cond_0

    iput-wide p2, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->timeUs:J

    .line 17
    :cond_0
    const/16 v0, 0xf7

    if-ne p1, v0, :cond_1

    long-to-int v0, p2

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->track:I

    .line 18
    :cond_1
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_2

    iput-wide p2, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->trackPosition:J

    .line 19
    :cond_2
    return-void
.end method

.method public start(I)V
    .locals 3

    .line 12
    const/16 v0, 0xbb

    const-wide/16 v1, -0x1

    if-ne p1, v0, :cond_0

    iput-wide v1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->timeUs:J

    iput-wide v1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    .line 13
    :cond_0
    const/16 v0, 0xb7

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->track:I

    iput-wide v1, p0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->trackPosition:J

    .line 14
    :cond_1
    return-void
.end method
