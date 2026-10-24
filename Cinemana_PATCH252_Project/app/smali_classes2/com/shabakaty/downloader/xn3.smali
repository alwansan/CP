.class public abstract Lcom/shabakaty/downloader/xn3;
.super Lcom/shabakaty/downloader/ck2;
.source "AbstractChannel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/zn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ck2;",
        "Lcom/shabakaty/downloader/zn3<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ck2;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    return-object v0
.end method

.method public w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract x(Lcom/shabakaty/downloader/f40;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation
.end method
