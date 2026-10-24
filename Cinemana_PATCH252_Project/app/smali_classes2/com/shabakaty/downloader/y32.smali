.class public final Lcom/shabakaty/downloader/y32;
.super Lcom/shabakaty/downloader/k92;
.source "JobSupport.kt"


# instance fields
.field public final synthetic v:I

.field public final w:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gv;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/y32;->v:I

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/k92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/y32;->v:I

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ud0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/y32;->v:I

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/k92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/y32;->v:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/y32;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 2
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/y32;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 3
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/y32;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/y32;->v:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/i80;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gv;

    check-cast p1, Lcom/shabakaty/downloader/i80;

    iget-object p1, p1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p1}, Lcom/shabakaty/downloader/m92;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/y32;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ud0;

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
