.class public final synthetic Lcom/shabakaty/downloader/v5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Z

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;ZII)V
    .locals 0

    iput p4, p0, Lcom/shabakaty/downloader/v5;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/v5;->s:Lcom/shabakaty/downloader/t6$a;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/v5;->t:Z

    iput p3, p0, Lcom/shabakaty/downloader/v5;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/v5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v5;->t:Z

    iget v2, p0, Lcom/shabakaty/downloader/v5;->u:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->X(Lcom/shabakaty/downloader/t6$a;ZI)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v5;->t:Z

    iget v2, p0, Lcom/shabakaty/downloader/v5;->u:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->t(Lcom/shabakaty/downloader/t6$a;ZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
