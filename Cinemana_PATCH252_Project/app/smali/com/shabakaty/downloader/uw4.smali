.class public final synthetic Lcom/shabakaty/downloader/uw4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/fj4$a;
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(ILcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/uw4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/uw4;->u:I

    iput-object p2, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/dp2;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/uw4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/downloader/uw4;->u:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/oq4;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/uw4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/downloader/uw4;->u:I

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ww4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/oq4;

    iget v2, p0, Lcom/shabakaty/downloader/uw4;->u:I

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/ww4;->d:Lcom/shabakaty/downloader/b85;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/b85;->b(Lcom/shabakaty/downloader/oq4;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/uw4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/uw4;->u:I

    iget-object v1, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/bd3$f;

    iget-object v2, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/bd3$f;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->g(I)V

    .line 2
    invoke-interface {p1, v1, v2, v0}, Lcom/shabakaty/downloader/bd3$c;->O(Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uw4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/uw4;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/dp2;

    iget v2, p0, Lcom/shabakaty/downloader/uw4;->u:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->j(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/dp2;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
