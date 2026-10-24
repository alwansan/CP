.class public final synthetic Lcom/shabakaty/downloader/gr6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/d54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d54;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/gr6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/gr6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d54;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d54;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gr6;->s:Lcom/shabakaty/downloader/d54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d54;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
