.class public final synthetic Lcom/shabakaty/downloader/bg3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rn1;


# static fields
.field public static final synthetic b:Lcom/shabakaty/downloader/bg3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/bg3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bg3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/bg3;->b:Lcom/shabakaty/downloader/bg3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/bg3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bg3;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/tu;

    .line 1
    sget-object v0, Landroidx/camera/lifecycle/b;->c:Landroidx/camera/lifecycle/b;

    .line 2
    iput-object p1, v0, Landroidx/camera/lifecycle/b;->b:Lcom/shabakaty/downloader/tu;

    return-object v0

    .line 3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/yh4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->b1()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
