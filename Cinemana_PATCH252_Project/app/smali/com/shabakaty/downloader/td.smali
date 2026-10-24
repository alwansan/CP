.class public final synthetic Lcom/shabakaty/downloader/td;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/shabakaty/downloader/oo2$c;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/rj4;Lcom/shabakaty/downloader/oo2$c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/td;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/td;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/td;->c:Lcom/shabakaty/downloader/oo2$c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ud;Lcom/shabakaty/downloader/oo2$c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/td;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/td;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/td;->c:Lcom/shabakaty/downloader/oo2$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 6

    iget p1, p0, Lcom/shabakaty/downloader/td;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/td;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ud;

    iget-object p1, p0, Lcom/shabakaty/downloader/td;->c:Lcom/shabakaty/downloader/oo2$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/yo2$b;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/yo2$b;->b(Lcom/shabakaty/downloader/oo2;JJ)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/td;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/rj4;

    iget-object p1, p0, Lcom/shabakaty/downloader/td;->c:Lcom/shabakaty/downloader/oo2$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/yo2$b;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/yo2$b;->b(Lcom/shabakaty/downloader/oo2;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
