.class public final synthetic Lcom/shabakaty/downloader/qi4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/yc0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/d$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/qi4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qi4;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ar$a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/qi4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qi4;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/qi4;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qi4;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/view/d$a;

    check-cast p1, Lcom/shabakaty/downloader/mi4$f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v1, "SurfaceViewImpl"

    const-string v2, "Safe to release surface."

    .line 1
    invoke-static {v1, v2, p1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, v0, Landroidx/camera/view/d$a;->v:Landroidx/camera/view/d;

    .line 3
    iget-object v1, v0, Landroidx/camera/view/d;->f:Landroidx/camera/view/c$a;

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ij4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij4;->a()V

    .line 5
    iput-object p1, v0, Landroidx/camera/view/d;->f:Landroidx/camera/view/c$a;

    :cond_0
    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qi4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ar$a;

    check-cast p1, Lcom/shabakaty/downloader/mi4$f;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
