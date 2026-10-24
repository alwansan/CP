.class public final Lcom/shabakaty/downloader/ge4;
.super Lcom/shabakaty/downloader/qb0;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qb0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "module"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->w()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string v0, "module.builtIns.stringType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x22

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/i61;->a(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 3
    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
