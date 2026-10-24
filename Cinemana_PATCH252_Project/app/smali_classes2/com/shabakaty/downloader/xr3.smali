.class public final Lcom/shabakaty/downloader/xr3;
.super Lcom/shabakaty/downloader/yr3;
.source "RequestBody.kt"


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/fp;

.field public final synthetic c:Lcom/shabakaty/downloader/fr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fr2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xr3;->b:Lcom/shabakaty/downloader/fp;

    iput-object p2, p0, Lcom/shabakaty/downloader/xr3;->c:Lcom/shabakaty/downloader/fr2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr3;->b:Lcom/shabakaty/downloader/fp;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fp;->j()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr3;->c:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr3;->b:Lcom/shabakaty/downloader/fp;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/do;->j0(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/do;

    return-void
.end method
