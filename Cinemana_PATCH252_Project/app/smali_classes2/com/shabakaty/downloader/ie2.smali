.class public final Lcom/shabakaty/downloader/ie2;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryPackageSourceElement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/s94;


# instance fields
.field public final b:Lcom/shabakaty/downloader/yf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ie2;->b:Lcom/shabakaty/downloader/yf2;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/t94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t94;->a:Lcom/shabakaty/downloader/t94;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/ie2;->b:Lcom/shabakaty/downloader/yf2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ie2;->b:Lcom/shabakaty/downloader/yf2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yf2;->S0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
