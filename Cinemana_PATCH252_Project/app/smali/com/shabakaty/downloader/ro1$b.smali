.class public final Lcom/shabakaty/downloader/ro1$b;
.super Lcom/shabakaty/downloader/qp1$a;
.source "GaugeMetric.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ro1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qp1$a<",
        "Lcom/shabakaty/downloader/ro1;",
        "Lcom/shabakaty/downloader/ro1$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ro1;->A()Lcom/shabakaty/downloader/ro1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qp1$a;-><init>(Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ro1$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ro1;->A()Lcom/shabakaty/downloader/ro1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qp1$a;-><init>(Lcom/shabakaty/downloader/qp1;)V

    return-void
.end method
