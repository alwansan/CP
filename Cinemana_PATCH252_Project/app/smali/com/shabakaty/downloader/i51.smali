.class public abstract Lcom/shabakaty/downloader/i51;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/i51<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dh;

    sget-object v1, Lcom/shabakaty/downloader/tf3;->r:Lcom/shabakaty/downloader/tf3;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/shabakaty/downloader/dh;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/shabakaty/downloader/tf3;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/i51<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dh;

    sget-object v1, Lcom/shabakaty/downloader/tf3;->s:Lcom/shabakaty/downloader/tf3;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/shabakaty/downloader/dh;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/shabakaty/downloader/tf3;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/i51<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dh;

    sget-object v1, Lcom/shabakaty/downloader/tf3;->t:Lcom/shabakaty/downloader/tf3;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/shabakaty/downloader/dh;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/shabakaty/downloader/tf3;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/shabakaty/downloader/tf3;
.end method
