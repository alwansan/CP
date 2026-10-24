.class public final synthetic Lcom/shabakaty/downloader/ib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/hn1;

.field public final synthetic t:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/hn1;Ljava/util/List;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/ib;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ib;->s:Lcom/shabakaty/downloader/hn1;

    iput-object p2, p0, Lcom/shabakaty/downloader/ib;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/ib;->r:I

    const-string v1, "$items"

    const-string v2, "$onSelection"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ib;->s:Lcom/shabakaty/downloader/hn1;

    iget-object v3, p0, Lcom/shabakaty/downloader/ib;->t:Ljava/util/List;

    sget v4, Lcom/shabakaty/downloader/jb;->x:I

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ib;->s:Lcom/shabakaty/downloader/hn1;

    iget-object v3, p0, Lcom/shabakaty/downloader/ib;->t:Ljava/util/List;

    sget v4, Lcom/shabakaty/downloader/vg4;->x:I

    .line 5
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
