.class public final Lcom/shabakaty/downloader/bv6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/nr6;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fc7;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/bv6;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/k37;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/bv6;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bv6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/k37;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k37;->t:Ljava/lang/String;

    return-object v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fc7;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/fc7;->s:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bv6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/k37;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/k37;->w:I

    return v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fc7;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/fc7;->u:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bv6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/k37;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/k37;->r:I

    return v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fc7;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/fc7;->r:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
