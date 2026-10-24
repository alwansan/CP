.class public final Lcom/shabakaty/downloader/qq0;
.super Ljava/lang/Object;
.source "DescriptorEquivalenceForOverrides.kt"

# interfaces
.implements Lcom/shabakaty/downloader/re2$a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/shabakaty/downloader/rq;

.field public final synthetic c:Lcom/shabakaty/downloader/rq;


# direct methods
.method public constructor <init>(ZLcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)V
    .locals 0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/qq0;->a:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/qq0;->b:Lcom/shabakaty/downloader/rq;

    iput-object p3, p0, Lcom/shabakaty/downloader/qq0;->c:Lcom/shabakaty/downloader/rq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z
    .locals 5

    const-string v0, "c1"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p2

    .line 4
    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/shabakaty/downloader/kt4;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/sq0;->a:Lcom/shabakaty/downloader/sq0;

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    check-cast p2, Lcom/shabakaty/downloader/kt4;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/qq0;->a:Z

    new-instance v2, Lcom/shabakaty/downloader/qq0$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/qq0;->b:Lcom/shabakaty/downloader/rq;

    iget-object v4, p0, Lcom/shabakaty/downloader/qq0;->c:Lcom/shabakaty/downloader/rq;

    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/qq0$a;-><init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/sq0;->b(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/hn1;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
