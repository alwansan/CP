.class public final Lcom/shabakaty/downloader/id2;
.super Lcom/shabakaty/downloader/af2;
.source "KProperty2Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/hd2$a<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hd2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hd2;I)V
    .locals 2

    iput p2, p0, Lcom/shabakaty/downloader/id2;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zc2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/id2;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/id2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hd2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->h()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_1
    new-instance v0, Lcom/shabakaty/downloader/hd2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/hd2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hd2$a;-><init>(Lcom/shabakaty/downloader/hd2;)V

    return-object v0

    .line 3
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/zc2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/id2;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zc2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zc2$a;-><init>(Lcom/shabakaty/downloader/zc2;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
