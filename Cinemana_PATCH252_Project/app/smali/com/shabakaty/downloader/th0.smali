.class public final synthetic Lcom/shabakaty/downloader/th0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

.field public final synthetic s:[J

.field public final synthetic t:[J

.field public final synthetic u:Lcom/shabakaty/downloader/ho3;

.field public final synthetic v:Lcom/shabakaty/downloader/zh0;

.field public final synthetic w:Lcom/shabakaty/downloader/vj3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;[J[JLcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/zh0;Lcom/shabakaty/downloader/vj3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/th0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iput-object p2, p0, Lcom/shabakaty/downloader/th0;->s:[J

    iput-object p3, p0, Lcom/shabakaty/downloader/th0;->t:[J

    iput-object p4, p0, Lcom/shabakaty/downloader/th0;->u:Lcom/shabakaty/downloader/ho3;

    iput-object p5, p0, Lcom/shabakaty/downloader/th0;->v:Lcom/shabakaty/downloader/zh0;

    iput-object p6, p0, Lcom/shabakaty/downloader/th0;->w:Lcom/shabakaty/downloader/vj3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v1, p0, Lcom/shabakaty/downloader/th0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iget-object v2, p0, Lcom/shabakaty/downloader/th0;->s:[J

    iget-object v3, p0, Lcom/shabakaty/downloader/th0;->t:[J

    iget-object v4, p0, Lcom/shabakaty/downloader/th0;->u:Lcom/shabakaty/downloader/ho3;

    iget-object v5, p0, Lcom/shabakaty/downloader/th0;->v:Lcom/shabakaty/downloader/zh0;

    iget-object v6, p0, Lcom/shabakaty/downloader/th0;->w:Lcom/shabakaty/downloader/vj3;

    check-cast p1, Ljava/lang/Long;

    sget-object p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const-string p1, "this$0"

    .line 1
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$startTime"

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$endTime"

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$isSeeking"

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$responseListener"

    invoke-static {v5, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$publisher"

    invoke-static {v6, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    :goto_0
    if-eqz p1, :cond_4

    .line 4
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->F:Lcom/shabakaty/downloader/n24;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    if-nez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Lcom/shabakaty/downloader/yh0;

    const/16 v7, 0xfa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/yh0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;[J[JLcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/zh0;Lcom/shabakaty/downloader/vj3;I)V

    invoke-interface {p1, v8}, Lcom/connectsdk/service/capability/MediaControl;->getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    goto :goto_1

    :cond_3
    const-string p1, "settings"

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
