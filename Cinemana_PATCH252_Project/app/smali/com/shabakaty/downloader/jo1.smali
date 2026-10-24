.class public Lcom/shabakaty/downloader/jo1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/shabakaty/downloader/od;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/od<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/rn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/jo1;->a:Lcom/shabakaty/downloader/rn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jo1;->a:Lcom/shabakaty/downloader/rn1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/rn1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1
.end method
