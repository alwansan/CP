.class public final Lcom/shabakaty/downloader/gp5;
.super Lcom/shabakaty/downloader/bq5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final synthetic v:I

.field public final synthetic w:Lcom/shabakaty/downloader/br5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br5;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/gp5;->v:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gp5;->w:Lcom/shabakaty/downloader/br5;

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bq5;-><init>(Lcom/shabakaty/downloader/br5;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/gp5;->w:Lcom/shabakaty/downloader/br5;

    .line 4
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bq5;-><init>(Lcom/shabakaty/downloader/br5;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/gp5;->v:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gp5;->w:Lcom/shabakaty/downloader/br5;

    iget-object v0, v0, Lcom/shabakaty/downloader/br5;->t:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gp5;->w:Lcom/shabakaty/downloader/br5;

    iget-object v0, v0, Lcom/shabakaty/downloader/br5;->u:[Ljava/lang/Object;

    .line 4
    aget-object p1, v0, p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
