.class public final Lcom/shabakaty/downloader/yh0;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaControl$PositionListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

.field public final synthetic b:[J

.field public final synthetic c:[J

.field public final synthetic d:Lcom/shabakaty/downloader/ho3;

.field public final synthetic e:Lcom/shabakaty/downloader/zh0;

.field public final synthetic f:Lcom/shabakaty/downloader/vj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/vj3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;[J[JLcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/zh0;Lcom/shabakaty/downloader/vj3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;",
            "[J[J",
            "Lcom/shabakaty/downloader/ho3;",
            "Lcom/shabakaty/downloader/zh0;",
            "Lcom/shabakaty/downloader/vj3<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/yh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iput-object p2, p0, Lcom/shabakaty/downloader/yh0;->b:[J

    iput-object p3, p0, Lcom/shabakaty/downloader/yh0;->c:[J

    iput-object p4, p0, Lcom/shabakaty/downloader/yh0;->d:Lcom/shabakaty/downloader/ho3;

    iput-object p5, p0, Lcom/shabakaty/downloader/yh0;->e:Lcom/shabakaty/downloader/zh0;

    iput-object p6, p0, Lcom/shabakaty/downloader/yh0;->f:Lcom/shabakaty/downloader/vj3;

    iput p7, p0, Lcom/shabakaty/downloader/yh0;->g:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->d:Lcom/shabakaty/downloader/ho3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->f:Lcom/shabakaty/downloader/vj3;

    iget v0, p0, Lcom/shabakaty/downloader/yh0;->g:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iget-object v2, p0, Lcom/shabakaty/downloader/yh0;->b:[J

    iget-object v3, p0, Lcom/shabakaty/downloader/yh0;->c:[J

    sget-object v4, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length p1, v2

    const/4 v4, -0x1

    add-int/2addr p1, v4

    const/4 v5, 0x0

    if-ltz p1, :cond_2

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v7, v6, 0x1

    .line 5
    aget-wide v8, v2, v6

    const/16 v10, 0x1f4

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v12, v0, v8

    if-ltz v12, :cond_0

    aget-wide v8, v3, v6

    sub-long/2addr v8, v10

    cmp-long v10, v0, v8

    if-gtz v10, :cond_0

    goto :goto_2

    :cond_0
    if-le v7, p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eq v6, v4, :cond_6

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->b:[J

    aget-wide v2, p1, v6

    const-wide/16 v7, 0x1f4

    add-long/2addr v2, v7

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->c:[J

    aget-wide v2, p1, v6

    sub-long/2addr v2, v7

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/yh0;->d:Lcom/shabakaty/downloader/ho3;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/yh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    if-nez v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object v0, v0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    aget-wide v1, p1, v6

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->e:Lcom/shabakaty/downloader/zh0;

    .line 13
    invoke-interface {v0, v1, v2, p1}, Lcom/connectsdk/service/capability/MediaControl;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_3

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->d:Lcom/shabakaty/downloader/ho3;

    iput-boolean v5, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->f:Lcom/shabakaty/downloader/vj3;

    iget v0, p0, Lcom/shabakaty/downloader/yh0;->g:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/yh0;->f:Lcom/shabakaty/downloader/vj3;

    iget v0, p0, Lcom/shabakaty/downloader/yh0;->g:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
