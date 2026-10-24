.class public final synthetic Lcom/shabakaty/downloader/nd5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ht5;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ht5;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/nd5;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nd5;->s:Lcom/shabakaty/downloader/ht5;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nd5;->s:Lcom/shabakaty/downloader/ht5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/nd5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nd5;->s:Lcom/shabakaty/downloader/ht5;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/zu6;

    iget-object v0, v0, Lcom/shabakaty/downloader/ht5;->d:Lcom/shabakaty/downloader/ag6;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zu6;-><init>(Lcom/shabakaty/downloader/ag6;)V

    return-object v1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nd5;->s:Lcom/shabakaty/downloader/ht5;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/zu6;

    iget-object v0, v0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zu6;-><init>(Lcom/shabakaty/downloader/tk1;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
