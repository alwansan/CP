.class public final Lcom/shabakaty/downloader/xz2;
.super Lcom/shabakaty/downloader/sr0;
.source "DeserializedAnnotations.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/r8;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
