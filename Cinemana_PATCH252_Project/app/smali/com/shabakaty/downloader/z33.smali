.class public final Lcom/shabakaty/downloader/z33;
.super Ljava/lang/Object;
.source "OSOutcomeSource.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/ag6;

.field public b:Lcom/shabakaty/downloader/ag6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    iput-object p2, p0, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OSOutcomeSource{directBody="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
