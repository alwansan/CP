.class public final Lcom/shabakaty/downloader/b;
.super Ljava/lang/Object;
.source "-Base64.kt"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/fp;->t:[B

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/b;->a:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    return-void
.end method
