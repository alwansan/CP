.class public final Lcom/shabakaty/downloader/t15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/t15;->r:Lcom/shabakaty/downloader/u15;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    const-string p1, "it"

    .line 2
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/t15;->r:Lcom/shabakaty/downloader/u15;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    const/4 v2, 0x0

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/tj;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
