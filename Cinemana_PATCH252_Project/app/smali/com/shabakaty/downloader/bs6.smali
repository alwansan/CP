.class public final Lcom/shabakaty/downloader/bs6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/d54;Lcom/shabakaty/downloader/yr6;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    .line 1
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    .line 2
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/o70;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    new-instance p3, Lcom/shabakaty/downloader/cr6;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0}, Lcom/shabakaty/downloader/cr6;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p3, Lcom/shabakaty/downloader/gr6;

    invoke-direct {p3, p2, v0}, Lcom/shabakaty/downloader/gr6;-><init>(Lcom/shabakaty/downloader/d54;I)V

    .line 9
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
