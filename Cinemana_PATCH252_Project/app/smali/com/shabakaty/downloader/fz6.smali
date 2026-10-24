.class public final Lcom/shabakaty/downloader/fz6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/j07;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/j07;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/cz6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fz6;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cz6;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/z07;

    .line 3
    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/z07;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/cz6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cz6;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/p07;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p07;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qz2;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/fz6;->a:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j07;

    .line 2
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/j07;->a(Lcom/shabakaty/downloader/qz2;)V

    goto :goto_0

    :cond_0
    return-void
.end method
