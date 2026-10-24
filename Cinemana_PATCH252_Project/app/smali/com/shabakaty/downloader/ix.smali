.class public final synthetic Lcom/shabakaty/downloader/ix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fz3;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ix;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ix;->s:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ix;->t:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/jx;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ix;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ix;->s:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ix;->t:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ix;->r:I

    const-string v1, "it"

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ix;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/jx;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/ix;->t:Z

    check-cast p1, Ljava/util/List;

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jx;->b:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/qm2;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ix;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fz3;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/ix;->t:Z

    check-cast p1, Ljava/util/List;

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/fz3;->b:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/qm2;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
