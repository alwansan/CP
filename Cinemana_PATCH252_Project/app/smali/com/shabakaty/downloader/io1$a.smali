.class public Lcom/shabakaty/downloader/io1$a;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/io1;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ar$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/io1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/io1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/io1$a;->r:Lcom/shabakaty/downloader/io1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io1$a;->r:Lcom/shabakaty/downloader/io1;

    iget-object v0, v0, Lcom/shabakaty/downloader/io1;->s:Lcom/shabakaty/downloader/ar$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The result can only set once!"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/io1$a;->r:Lcom/shabakaty/downloader/io1;

    iput-object p1, v0, Lcom/shabakaty/downloader/io1;->s:Lcom/shabakaty/downloader/ar$a;

    const-string p1, "FutureChain["

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/io1$a;->r:Lcom/shabakaty/downloader/io1;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
