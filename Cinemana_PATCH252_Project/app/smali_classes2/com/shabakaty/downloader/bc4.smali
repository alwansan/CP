.class public final Lcom/shabakaty/downloader/bc4;
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
    .locals 1
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
    sget-object p1, Lcom/shabakaty/downloader/i54;->r:Lcom/shabakaty/downloader/i54;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/we1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/we1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SharingStarted.Eagerly"

    return-object v0
.end method
