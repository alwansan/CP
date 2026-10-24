.class public final Lcom/shabakaty/downloader/cc4;
.super Ljava/lang/Object;
.source "SharingStarted.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j54;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/gc4;)Lcom/shabakaty/downloader/te1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gc4<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/shabakaty/downloader/te1<",
            "Lcom/shabakaty/downloader/i54;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cc4$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/cc4$a;-><init>(Lcom/shabakaty/downloader/gc4;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/rw3;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/rw3;-><init>(Lcom/shabakaty/downloader/hn1;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SharingStarted.Lazily"

    return-object v0
.end method
