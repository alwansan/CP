.class public final Lcom/shabakaty/downloader/x13;
.super Lcom/shabakaty/downloader/aq0;
.source "KotlinTypeFactory.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/aq0;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-void
.end method


# virtual methods
.method public U0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
    .locals 1

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x13;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/x13;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method
