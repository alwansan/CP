.class public final Lcom/shabakaty/downloader/f51$a0;
.super Lcom/shabakaty/downloader/f51$o;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/f51$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)I
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->C()Lcom/shabakaty/downloader/m21;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/k21;->F()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-child"

    return-object v0
.end method
