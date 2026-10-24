.class public final Lcom/shabakaty/downloader/w33;
.super Lcom/shabakaty/downloader/o33;
.source "OSOutcomeEventsV1Service.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k73;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/o33;-><init>(Lcom/shabakaty/downloader/k73;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/m73;)V
    .locals 2

    const-string v0, "responseHandler"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o33;->a:Lcom/shabakaty/downloader/k73;

    .line 2
    check-cast v0, Lcom/onesignal/b1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/onesignal/a1;

    invoke-direct {v1, v0, p2}, Lcom/onesignal/a1;-><init>(Lcom/onesignal/b1;Lcom/shabakaty/downloader/m73;)V

    const-string p2, "outcomes/measure"

    invoke-static {p2, p1, v1}, Lcom/onesignal/x0;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    return-void
.end method
