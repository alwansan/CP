.class public final Lcom/shabakaty/downloader/c54;
.super Lcom/shabakaty/downloader/c1;
.source "SharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/c1<",
        "Lcom/shabakaty/downloader/a54<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/c1;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/c54;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/a54;

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/c54;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p1, Lcom/shabakaty/downloader/a54;->w:J

    .line 4
    iget-wide v2, p1, Lcom/shabakaty/downloader/a54;->x:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iput-wide v0, p1, Lcom/shabakaty/downloader/a54;->x:J

    .line 5
    :cond_1
    iput-wide v0, p0, Lcom/shabakaty/downloader/c54;->a:J

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;)[Lcom/shabakaty/downloader/ud0;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/a54;

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/c54;->a:J

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/c54;->a:J

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/shabakaty/downloader/c54;->b:Lcom/shabakaty/downloader/ud0;

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/a54;->y(J)[Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    return-object p1
.end method
