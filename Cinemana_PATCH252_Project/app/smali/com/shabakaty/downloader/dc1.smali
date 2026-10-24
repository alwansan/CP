.class public final synthetic Lcom/shabakaty/downloader/dc1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/pj3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ec1;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/dc1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dc1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/dc1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/z80;Lcom/shabakaty/downloader/o80;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/dc1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dc1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/dc1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/dc1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dc1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ec1;

    iget-object v1, p0, Lcom/shabakaty/downloader/dc1;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/kl0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    const-class v4, Lcom/shabakaty/downloader/xj3;

    .line 3
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xj3;

    invoke-direct {v2, v1, v3, v0}, Lcom/shabakaty/downloader/kl0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/xj3;)V

    return-object v2

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dc1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/z80;

    iget-object v1, p0, Lcom/shabakaty/downloader/dc1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/o80;

    sget v2, Lcom/shabakaty/downloader/z80;->g:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/o80;->e:Lcom/shabakaty/downloader/t80;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/at3;

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/at3;-><init>(Lcom/shabakaty/downloader/o80;Lcom/shabakaty/downloader/q80;)V

    .line 7
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/t80;->a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
