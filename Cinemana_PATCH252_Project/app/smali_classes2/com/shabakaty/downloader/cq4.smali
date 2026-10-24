.class public Lcom/shabakaty/downloader/cq4;
.super Lcom/shabakaty/downloader/v0;
.source "TransientReceiver.java"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qe2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/v0;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/co3;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "{Transient} : "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v0;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
