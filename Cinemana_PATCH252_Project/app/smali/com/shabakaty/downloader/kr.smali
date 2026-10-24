.class public final synthetic Lcom/shabakaty/downloader/kr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/mr;

.field public final synthetic t:Lcom/shabakaty/downloader/ar$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mr;Lcom/shabakaty/downloader/ar$a;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/kr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kr;->s:Lcom/shabakaty/downloader/mr;

    iput-object p2, p0, Lcom/shabakaty/downloader/kr;->t:Lcom/shabakaty/downloader/ar$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/kr;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kr;->s:Lcom/shabakaty/downloader/mr;

    iget-object v1, p0, Lcom/shabakaty/downloader/kr;->t:Lcom/shabakaty/downloader/ar$a;

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mr;->b(Lcom/shabakaty/downloader/ar$a;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kr;->s:Lcom/shabakaty/downloader/mr;

    iget-object v1, p0, Lcom/shabakaty/downloader/kr;->t:Lcom/shabakaty/downloader/ar$a;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mr;->b(Lcom/shabakaty/downloader/ar$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
