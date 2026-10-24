.class public final Lcom/shabakaty/downloader/c17;
.super Lcom/shabakaty/downloader/rf2;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/rf2<",
        "Lcom/shabakaty/downloader/cz6;",
        "Lcom/shabakaty/downloader/l07;",
        ">;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/rf2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/shabakaty/downloader/cz6;

    new-instance v0, Lcom/shabakaty/downloader/l07;

    invoke-static {}, Lcom/shabakaty/downloader/zt2;->c()Lcom/shabakaty/downloader/zt2;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/fz6;

    invoke-static {}, Lcom/shabakaty/downloader/zt2;->c()Lcom/shabakaty/downloader/zt2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/zt2;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/shabakaty/downloader/fz6;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/cz6;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cz6;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zt2;->b()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/shabakaty/downloader/d54;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/zt2;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d54;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/shabakaty/downloader/l07;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/d54;Lcom/shabakaty/downloader/j07;Ljava/lang/String;)V

    return-object v0
.end method
