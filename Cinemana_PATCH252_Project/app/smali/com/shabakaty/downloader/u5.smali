.class public final synthetic Lcom/shabakaty/downloader/u5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;ZI)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/u5;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u5;->s:Lcom/shabakaty/downloader/t6$a;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/u5;->t:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/u5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/u5;->t:Z

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->u(Lcom/shabakaty/downloader/t6$a;Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/u5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/u5;->t:Z

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->g(Lcom/shabakaty/downloader/t6$a;Z)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/u5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/u5;->t:Z

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->P(Lcom/shabakaty/downloader/t6$a;Z)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->Z(Lcom/shabakaty/downloader/t6$a;Z)V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/u5;->t:Z

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->a(Lcom/shabakaty/downloader/t6$a;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
