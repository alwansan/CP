.class public final synthetic Lcom/shabakaty/downloader/bi0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/bi0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bi0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/bi0;->r:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bi0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/ci0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ci0;-><init>()V

    invoke-interface {v0, v1}, Lcom/connectsdk/service/capability/MediaControl;->getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    :goto_0
    return-void

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/gi0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/gi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    invoke-interface {v1, v2}, Lcom/connectsdk/service/capability/MediaControl;->getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
