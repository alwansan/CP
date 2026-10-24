.class public final Lcom/shabakaty/downloader/bn5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shabakaty/downloader/gj5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bh5;

.field public final synthetic s:Lcom/shabakaty/downloader/np4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bh5;Lcom/shabakaty/downloader/np4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bn5;->r:Lcom/shabakaty/downloader/bh5;

    iput-object p2, p0, Lcom/shabakaty/downloader/bn5;->s:Lcom/shabakaty/downloader/np4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/gj5;

    check-cast p2, Lcom/shabakaty/downloader/gj5;

    iget-object v0, p0, Lcom/shabakaty/downloader/bn5;->r:Lcom/shabakaty/downloader/bh5;

    iget-object v1, p0, Lcom/shabakaty/downloader/bn5;->s:Lcom/shabakaty/downloader/np4;

    .line 2
    instance-of v2, p1, Lcom/shabakaty/downloader/hk5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3
    instance-of p1, p2, Lcom/shabakaty/downloader/hk5;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    .line 4
    :cond_1
    instance-of v2, p2, Lcom/shabakaty/downloader/hk5;

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/shabakaty/downloader/gj5;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/bh5;->a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/kl3;->h(D)D

    move-result-wide p1

    double-to-int v3, p1

    :goto_0
    return v3
.end method
