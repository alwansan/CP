.class public final synthetic Lcom/shabakaty/downloader/qt2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ob4;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/qt2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qt2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qt2;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/qt2;->u:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qk;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/qt2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qt2;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qt2;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/qt2;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/shabakaty/downloader/qt2;->r:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qt2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/hn1;

    iget-object v0, p0, Lcom/shabakaty/downloader/qt2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ob4;

    iget-object v1, p0, Lcom/shabakaty/downloader/qt2;->u:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "$onClick"

    .line 1
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$staff"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$textView"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qt2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qk;

    iget-object v0, p0, Lcom/shabakaty/downloader/qt2;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/qt2;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/qk;->s0(Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
