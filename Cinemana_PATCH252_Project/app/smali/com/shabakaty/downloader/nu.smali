.class public final synthetic Lcom/shabakaty/downloader/nu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rn1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/nu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nu;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/nu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nu;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/nu;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nu;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/view/a;

    check-cast p1, Ljava/lang/Void;

    .line 1
    sget-object p1, Landroidx/camera/view/PreviewView$e;->s:Landroidx/camera/view/PreviewView$e;

    invoke-virtual {v0, p1}, Landroidx/camera/view/a;->a(Landroidx/camera/view/PreviewView$e;)V

    return-object v1

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/nu;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tu;

    check-cast p1, Ljava/lang/Void;

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/yh4;

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
