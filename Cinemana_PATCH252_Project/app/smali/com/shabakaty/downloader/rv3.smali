.class public final synthetic Lcom/shabakaty/downloader/rv3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/tm1;

.field public final synthetic t:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/lo3;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/rv3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rv3;->s:Lcom/shabakaty/downloader/tm1;

    iput-object p2, p0, Lcom/shabakaty/downloader/rv3;->t:Lcom/shabakaty/downloader/lo3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/rv3;->r:I

    const/4 v1, 0x0

    const-string v2, "$disposable"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rv3;->s:Lcom/shabakaty/downloader/tm1;

    iget-object v3, p0, Lcom/shabakaty/downloader/rv3;->t:Lcom/shabakaty/downloader/lo3;

    const-string v4, "$success"

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, v3, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 4
    :goto_0
    iput-object v1, v3, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    return-void

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/rv3;->s:Lcom/shabakaty/downloader/tm1;

    iget-object v3, p0, Lcom/shabakaty/downloader/rv3;->t:Lcom/shabakaty/downloader/lo3;

    check-cast p1, Ljava/lang/Throwable;

    const-string v4, "$error"

    .line 6
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "it"

    .line 7
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, v3, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu0;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 10
    :goto_2
    iput-object v1, v3, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
