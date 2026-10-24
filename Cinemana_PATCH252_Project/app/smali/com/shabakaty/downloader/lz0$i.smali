.class public Lcom/shabakaty/downloader/lz0$i;
.super Lcom/shabakaty/downloader/w31;
.source "DownloadsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lz0;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/w31<",
        "Lcom/shabakaty/downloader/pw0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/w31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `Downloads` SET `task_id` = ?,`external_id` = ?,`progress_bytes` = ?,`title` = ?,`url` = ?,`img` = ?,`path` = ?,`size_bytes` = ?,`status` = ?,`last_updated` = ? WHERE `task_id` = ? AND `external_id` = ?"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    .line 2
    iget v0, p2, Lcom/shabakaty/downloader/pw0;->r:I

    int-to-long v0, v0

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 7
    iget-wide v1, p2, Lcom/shabakaty/downloader/pw0;->t:J

    .line 8
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 9
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 12
    :goto_1
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 13
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 15
    :goto_2
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 18
    :goto_3
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0x8

    .line 21
    iget-wide v1, p2, Lcom/shabakaty/downloader/pw0;->y:J

    .line 22
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 23
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    const-string v1, "value"

    .line 24
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget v0, v0, Lcom/shabakaty/downloader/xc4;->r:I

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 26
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 27
    iget-object v0, p2, Lcom/shabakaty/downloader/pw0;->B:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 28
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_5

    .line 29
    :cond_5
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xb

    .line 30
    iget v1, p2, Lcom/shabakaty/downloader/pw0;->r:I

    int-to-long v1, v1

    .line 31
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    .line 32
    iget-object p2, p2, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    const/16 v0, 0xc

    if-nez p2, :cond_6

    .line 33
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_6

    .line 34
    :cond_6
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_6
    return-void
.end method
