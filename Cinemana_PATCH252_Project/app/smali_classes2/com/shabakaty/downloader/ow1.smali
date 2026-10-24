.class public abstract Lcom/shabakaty/downloader/ow1;
.super Lcom/shabakaty/downloader/n14;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ow1$a;,
        Lcom/shabakaty/downloader/ow1$c;,
        Lcom/shabakaty/downloader/ow1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/n14<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fs3;

.field public final b:Lcom/shabakaty/downloader/mq$a;

.field public final c:Lcom/shabakaty/downloader/de0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fs3;",
            "Lcom/shabakaty/downloader/mq$a;",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n14;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ow1;->a:Lcom/shabakaty/downloader/fs3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ow1;->b:Lcom/shabakaty/downloader/mq$a;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ow1;->c:Lcom/shabakaty/downloader/de0;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z53;

    iget-object v1, p0, Lcom/shabakaty/downloader/ow1;->a:Lcom/shabakaty/downloader/fs3;

    iget-object v2, p0, Lcom/shabakaty/downloader/ow1;->b:Lcom/shabakaty/downloader/mq$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/ow1;->c:Lcom/shabakaty/downloader/de0;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/shabakaty/downloader/z53;-><init>(Lcom/shabakaty/downloader/fs3;[Ljava/lang/Object;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ow1;->c(Lcom/shabakaty/downloader/nq;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Lcom/shabakaty/downloader/nq;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation
.end method
