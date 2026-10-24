.class public final synthetic Lcom/shabakaty/downloader/gq2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroidx/mediarouter/media/g$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/g$f;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/gq2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gq2;->s:Landroidx/mediarouter/media/g$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/gq2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gq2;->s:Landroidx/mediarouter/media/g$f;

    .line 1
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$f;->b()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gq2;->s:Landroidx/mediarouter/media/g$f;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$f;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
