.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field public final r:Lcom/shabakaty/downloader/om1;

.field public final s:Landroidx/lifecycle/f;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/om1;Landroidx/lifecycle/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->s:Landroidx/lifecycle/f;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->onDestroy(Lcom/shabakaty/downloader/rh2;)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->onStop(Lcom/shabakaty/downloader/rh2;)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->b(Lcom/shabakaty/downloader/rh2;)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->k(Lcom/shabakaty/downloader/rh2;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->onStart(Lcom/shabakaty/downloader/rh2;)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->r:Lcom/shabakaty/downloader/om1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/om1;->o(Lcom/shabakaty/downloader/rh2;)V

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->s:Landroidx/lifecycle/f;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/f;->j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
