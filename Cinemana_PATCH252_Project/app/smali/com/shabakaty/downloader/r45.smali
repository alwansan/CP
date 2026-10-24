.class public final synthetic Lcom/shabakaty/downloader/r45;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/rm1;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/r45;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r45;->s:Lcom/shabakaty/downloader/rm1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p2, p0, Lcom/shabakaty/downloader/r45;->r:I

    const-string v0, "$onClick"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/shabakaty/downloader/r45;->s:Lcom/shabakaty/downloader/rm1;

    .line 1
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/r45;->s:Lcom/shabakaty/downloader/rm1;

    .line 5
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
