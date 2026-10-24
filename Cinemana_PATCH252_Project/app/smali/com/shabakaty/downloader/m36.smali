.class public final Lcom/shabakaty/downloader/m36;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/oz4;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Lcom/shabakaty/downloader/ma1;

.field public final d:Lcom/shabakaty/downloader/m43;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ma1;Lcom/shabakaty/downloader/m43;I)V
    .locals 2

    iput p3, p0, Lcom/shabakaty/downloader/m36;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/shabakaty/downloader/m36;->b:Z

    iput-object p1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    iput-object p2, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/shabakaty/downloader/m36;->b:Z

    iput-object p1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    iput-object p2, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/m36;->a:I

    const/4 v1, 0x1

    const-string v2, "Cannot encode a second value in the ValueEncoderContext"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m36;->b:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/m36;->b:Z

    return-void

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/p31;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m36;->b:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/m36;->b:Z

    return-void

    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/p31;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/String;)Lcom/shabakaty/downloader/oz4;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/m36;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m36;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    iget-object v1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m36;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    iget-object v1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Z)Lcom/shabakaty/downloader/oz4;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/m36;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m36;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    iget-object v1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    check-cast v0, Lcom/shabakaty/downloader/v26;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/v26;->g(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/v26;

    return-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m36;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/m36;->d:Lcom/shabakaty/downloader/m43;

    iget-object v1, p0, Lcom/shabakaty/downloader/m36;->c:Lcom/shabakaty/downloader/ma1;

    check-cast v0, Lcom/shabakaty/downloader/ki5;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/ki5;->g(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/ki5;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
