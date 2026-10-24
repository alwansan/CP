.class public final Lcom/shabakaty/downloader/h72;
.super Lcom/shabakaty/downloader/u72;
.source "JavaForKotlinOverridePropertyDescriptor.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/yh3;)V
    .locals 13

    const-string v0, "ownerDescriptor"

    move-object v2, p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v3, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v4

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v5

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p4 .. p4}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    .line 5
    invoke-interface {p2}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v8

    const/4 v9, 0x0

    .line 6
    sget-object v10, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 7
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/downloader/u72;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/tq$a;ZLcom/shabakaty/downloader/x93;)V

    return-void
.end method
