.class public Lcom/shabakaty/downloader/md5;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fj5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fj5;->d()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "null reference"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/md5;->a:Lcom/shabakaty/downloader/fj5;

    return-void
.end method
