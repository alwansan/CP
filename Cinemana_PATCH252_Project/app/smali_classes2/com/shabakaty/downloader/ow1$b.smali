.class public final Lcom/shabakaty/downloader/ow1$b;
.super Lcom/shabakaty/downloader/ow1;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ow1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ow1<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/shabakaty/downloader/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oq<",
            "TResponseT;",
            "Lcom/shabakaty/downloader/nq<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;Lcom/shabakaty/downloader/oq;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fs3;",
            "Lcom/shabakaty/downloader/mq$a;",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "TResponseT;>;",
            "Lcom/shabakaty/downloader/oq<",
            "TResponseT;",
            "Lcom/shabakaty/downloader/nq<",
            "TResponseT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ow1;-><init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/ow1$b;->d:Lcom/shabakaty/downloader/oq;

    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/nq;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ow1$b;->d:Lcom/shabakaty/downloader/oq;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/oq;->b(Lcom/shabakaty/downloader/nq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nq;

    .line 2
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 3
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p2}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ce2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ce2;-><init>(Lcom/shabakaty/downloader/nq;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/de2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/de2;-><init>(Lcom/shabakaty/downloader/fv;)V

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ge2;->a(Ljava/lang/Exception;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
