.class public final Lcom/shabakaty/downloader/d16;
.super Lcom/shabakaty/downloader/xk5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final a:Lcom/shabakaty/downloader/x06;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xk5;-><init>(I)V

    new-instance v0, Lcom/shabakaty/downloader/x06;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/x06;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d16;->a:Lcom/shabakaty/downloader/x06;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-eq p2, p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d16;->a:Lcom/shabakaty/downloader/x06;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/x06;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    .line 4
    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
