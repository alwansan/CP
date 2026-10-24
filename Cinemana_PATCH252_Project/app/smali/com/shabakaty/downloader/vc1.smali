.class public final Lcom/shabakaty/downloader/vc1;
.super Lcom/shabakaty/downloader/sb3;
.source "FirebasePerfGaugeMetricValidator.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ro1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ro1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/sb3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ro1;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ro1;->G()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ro1;->F()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ro1;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/vc1;->a:Lcom/shabakaty/downloader/ro1;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ro1;->I()Lcom/shabakaty/downloader/po1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/po1;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
