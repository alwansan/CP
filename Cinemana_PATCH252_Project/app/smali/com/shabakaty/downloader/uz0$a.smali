.class public final Lcom/shabakaty/downloader/uz0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsRepository.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uz0;-><init>(Lcom/shabakaty/downloader/kz0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/te1<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/pw0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uz0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uz0$a;->r:Lcom/shabakaty/downloader/uz0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uz0$a;->r:Lcom/shabakaty/downloader/uz0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uz0;->d()Lcom/shabakaty/downloader/te1;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/tz0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/tz0;-><init>(Lcom/shabakaty/downloader/te1;)V

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/d91;->a(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    return-object v0
.end method
