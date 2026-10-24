.class public final Lcom/shabakaty/downloader/k8;
.super Lcom/shabakaty/downloader/aq0;
.source "KotlinTypeFactory.kt"


# instance fields
.field public final t:Lcom/shabakaty/downloader/d9;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/aq0;-><init>(Lcom/shabakaty/downloader/b74;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/k8;->t:Lcom/shabakaty/downloader/d9;

    return-void
.end method


# virtual methods
.method public e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/k8;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/k8;->t:Lcom/shabakaty/downloader/d9;

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k8;->t:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
