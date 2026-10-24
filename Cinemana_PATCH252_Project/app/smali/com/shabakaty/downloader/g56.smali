.class public final Lcom/shabakaty/downloader/g56;
.super Lcom/shabakaty/downloader/rf2;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/rf2<",
        "Lcom/shabakaty/downloader/ti;",
        "Lcom/shabakaty/downloader/uk6;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/zt2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zt2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rf2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/g56;->b:Lcom/shabakaty/downloader/zt2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/ti;

    iget-object v0, p0, Lcom/shabakaty/downloader/g56;->b:Lcom/shabakaty/downloader/zt2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zt2;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/uz6;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/qq1;->b:Lcom/shabakaty/downloader/qq1;

    .line 2
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/qq1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0xc304510

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/n57;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/n57;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ti;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/uz6;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/uz6;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ti;)V

    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/uk6;

    iget-object v2, p0, Lcom/shabakaty/downloader/g56;->b:Lcom/shabakaty/downloader/zt2;

    invoke-direct {v0, v2, p1, v1}, Lcom/shabakaty/downloader/uk6;-><init>(Lcom/shabakaty/downloader/zt2;Lcom/shabakaty/downloader/ti;Lcom/shabakaty/downloader/po6;)V

    return-object v0
.end method
