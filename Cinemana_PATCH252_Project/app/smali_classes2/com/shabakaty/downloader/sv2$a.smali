.class public final Lcom/shabakaty/downloader/sv2$a;
.super Ljava/lang/Object;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sv2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fp;

.field public b:Lcom/shabakaty/downloader/fr2;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sv2$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "boundary"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sv2$a;->a:Lcom/shabakaty/downloader/fp;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/sv2;->f:Lcom/shabakaty/downloader/fr2;

    iput-object v0, p0, Lcom/shabakaty/downloader/sv2$a;->b:Lcom/shabakaty/downloader/fr2;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sv2$a;->c:Ljava/util/List;

    return-void
.end method
