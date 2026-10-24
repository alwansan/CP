.class public Lcom/shabakaty/downloader/tc4$a;
.super Landroid/os/Handler;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tc4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/tc4;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/shabakaty/downloader/tc4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/tc4$a$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/tc4$a$a;-><init>(Lcom/shabakaty/downloader/tc4$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 4
    iget v1, v0, Lcom/shabakaty/downloader/tc4;->k:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/shabakaty/downloader/tc4;->k:I

    .line 5
    iget-wide v1, v0, Lcom/shabakaty/downloader/tc4;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->e:J

    .line 6
    iget p1, v0, Lcom/shabakaty/downloader/tc4;->k:I

    int-to-long v1, p1

    .line 7
    div-long/2addr v3, v1

    .line 8
    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->h:J

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 10
    iget p1, v0, Lcom/shabakaty/downloader/tc4;->m:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tc4;->m:I

    .line 11
    iget-wide v3, v0, Lcom/shabakaty/downloader/tc4;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->g:J

    .line 12
    iget p1, v0, Lcom/shabakaty/downloader/tc4;->l:I

    int-to-long v1, p1

    .line 13
    div-long/2addr v3, v1

    .line 14
    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->j:J

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 16
    iget p1, v0, Lcom/shabakaty/downloader/tc4;->l:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/shabakaty/downloader/tc4;->l:I

    .line 17
    iget-wide v3, v0, Lcom/shabakaty/downloader/tc4;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->f:J

    int-to-long v1, p1

    .line 18
    div-long/2addr v3, v1

    .line 19
    iput-wide v3, v0, Lcom/shabakaty/downloader/tc4;->i:J

    goto :goto_0

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    .line 21
    iget-wide v3, p1, Lcom/shabakaty/downloader/tc4;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/shabakaty/downloader/tc4;->d:J

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/tc4$a;->a:Lcom/shabakaty/downloader/tc4;

    .line 23
    iget-wide v3, p1, Lcom/shabakaty/downloader/tc4;->c:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/shabakaty/downloader/tc4;->c:J

    :goto_0
    return-void
.end method
