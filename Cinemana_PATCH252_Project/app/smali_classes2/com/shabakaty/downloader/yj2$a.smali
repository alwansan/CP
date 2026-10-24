.class public final Lcom/shabakaty/downloader/yj2$a;
.super Lcom/shabakaty/downloader/yj2;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/yj2$f;Lcom/shabakaty/downloader/v64;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yj2$f;Lcom/shabakaty/downloader/v64;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/yj2$o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lcom/shabakaty/downloader/yj2$o<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/yj2$o;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/yj2$o;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method
