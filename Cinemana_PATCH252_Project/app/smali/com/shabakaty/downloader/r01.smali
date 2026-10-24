.class public final synthetic Lcom/shabakaty/downloader/r01;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/r01;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r01;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/r01;->t:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/downloader/r01;->u:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/shabakaty/downloader/si2$a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/r01;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r01;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/r01;->u:I

    iput-object p3, p0, Lcom/shabakaty/downloader/r01;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/r01;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r01;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/r01;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/s01;

    iget v2, p0, Lcom/shabakaty/downloader/r01;->u:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v3, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v3, v0, v2}, Lcom/shabakaty/downloader/s01;->m(ILcom/shabakaty/downloader/uq2$a;I)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r01;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/shabakaty/downloader/r01;->u:I

    iget-object v2, p0, Lcom/shabakaty/downloader/r01;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/si2$a;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/si2$c;

    .line 5
    iget-boolean v4, v3, Lcom/shabakaty/downloader/si2$c;->d:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    .line 6
    iget-object v4, v3, Lcom/shabakaty/downloader/si2$c;->b:Lcom/shabakaty/downloader/xd1$b;

    .line 7
    iget-boolean v6, v4, Lcom/shabakaty/downloader/xd1$b;->b:Z

    xor-int/2addr v6, v5

    invoke-static {v6}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/xd1$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 9
    :cond_1
    iput-boolean v5, v3, Lcom/shabakaty/downloader/si2$c;->c:Z

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/si2$c;->a:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/si2$a;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
