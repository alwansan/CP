.class public final synthetic Lcom/shabakaty/downloader/eb1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/fb1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fb1;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/eb1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/eb1;->b:Lcom/shabakaty/downloader/fb1;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget p1, p0, Lcom/shabakaty/downloader/eb1;->a:I

    const/4 v0, 0x0

    const-string v1, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/eb1;->b:Lcom/shabakaty/downloader/fb1;

    sget v2, Lcom/shabakaty/downloader/fb1;->x:I

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kb1;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ib1;

    invoke-direct {v1, p2, p1, v0}, Lcom/shabakaty/downloader/ib1;-><init>(ZLcom/shabakaty/downloader/kb1;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/xk;->h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/eb1;->b:Lcom/shabakaty/downloader/fb1;

    sget v2, Lcom/shabakaty/downloader/fb1;->x:I

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kb1;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/jb1;

    invoke-direct {v1, p1, p2, v0}, Lcom/shabakaty/downloader/jb1;-><init>(Lcom/shabakaty/downloader/kb1;ZLcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/xk;->h(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
