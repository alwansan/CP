.class public final Lcom/shabakaty/downloader/ow1$a;
.super Lcom/shabakaty/downloader/ow1;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ow1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ow1<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/shabakaty/downloader/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oq<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;Lcom/shabakaty/downloader/oq;)V
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
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ow1;-><init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/ow1$a;->d:Lcom/shabakaty/downloader/oq;

    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/nq;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ow1$a;->d:Lcom/shabakaty/downloader/oq;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/oq;->b(Lcom/shabakaty/downloader/nq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
