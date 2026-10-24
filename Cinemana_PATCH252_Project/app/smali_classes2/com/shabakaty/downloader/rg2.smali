.class public final Lcom/shabakaty/downloader/rg2;
.super Lcom/shabakaty/downloader/qb4;
.source "Builders.common.kt"


# instance fields
.field public final u:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/qb4;-><init>(Lcom/shabakaty/downloader/me0;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Lcom/shabakaty/downloader/he0;->f(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rg2;->u:Lcom/shabakaty/downloader/ud0;

    return-void
.end method


# virtual methods
.method public q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rg2;->u:Lcom/shabakaty/downloader/ud0;

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/bu0;->b(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
