.class public Lcom/shabakaty/downloader/n50;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/shabakaty/downloader/uz2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/k21;

.field public final b:Lcom/shabakaty/downloader/m21;

.field public final c:Lcom/shabakaty/downloader/f51;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/m21;Lcom/shabakaty/downloader/f51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n50;->a:Lcom/shabakaty/downloader/k21;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n50;->b:Lcom/shabakaty/downloader/m21;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/n50;->c:Lcom/shabakaty/downloader/f51;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/sz2;I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/sz2;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/shabakaty/downloader/k21;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/n50;->c:Lcom/shabakaty/downloader/f51;

    iget-object v0, p0, Lcom/shabakaty/downloader/n50;->a:Lcom/shabakaty/downloader/k21;

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/f51;->a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/n50;->b:Lcom/shabakaty/downloader/m21;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
