.class public final Lcom/shabakaty/downloader/so0$b;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/shabakaty/downloader/vz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/so0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/so0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/so0;Lcom/shabakaty/downloader/so0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/so0$b;->a:Lcom/shabakaty/downloader/so0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(J)Lcom/shabakaty/downloader/vz3$a;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so0$b;->a:Lcom/shabakaty/downloader/so0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/so0;->d:Lcom/shabakaty/downloader/vd4;

    .line 3
    iget v1, v1, Lcom/shabakaty/downloader/vd4;->i:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 4
    iget-wide v5, v0, Lcom/shabakaty/downloader/so0;->b:J

    .line 5
    iget-wide v3, v0, Lcom/shabakaty/downloader/so0;->c:J

    sub-long v7, v3, v5

    mul-long v7, v7, v1

    .line 6
    iget-wide v0, v0, Lcom/shabakaty/downloader/so0;->f:J

    .line 7
    div-long/2addr v7, v0

    add-long/2addr v7, v5

    const-wide/16 v0, 0x7530

    sub-long v0, v7, v0

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    move-wide v3, v0

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v0

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/vz3$a;

    new-instance v3, Lcom/shabakaty/downloader/xz3;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    return-object v2
.end method

.method public j()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so0$b;->a:Lcom/shabakaty/downloader/so0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/so0;->d:Lcom/shabakaty/downloader/vd4;

    .line 3
    iget-wide v2, v0, Lcom/shabakaty/downloader/so0;->f:J

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    .line 4
    iget v0, v1, Lcom/shabakaty/downloader/vd4;->i:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method
