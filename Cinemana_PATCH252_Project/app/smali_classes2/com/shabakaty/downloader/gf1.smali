.class public final Lcom/shabakaty/downloader/gf1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lcom/shabakaty/downloader/te1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/te1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/te1;

.field public final synthetic s:Lcom/shabakaty/downloader/hn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gf1;->r:Lcom/shabakaty/downloader/te1;

    iput-object p2, p0, Lcom/shabakaty/downloader/gf1;->s:Lcom/shabakaty/downloader/hn1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ho3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ho3;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/gf1;->r:Lcom/shabakaty/downloader/te1;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/gf1$a;

    invoke-direct {v2, p1, v0, p0}, Lcom/shabakaty/downloader/gf1$a;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/gf1;)V

    invoke-interface {v1, v2, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
