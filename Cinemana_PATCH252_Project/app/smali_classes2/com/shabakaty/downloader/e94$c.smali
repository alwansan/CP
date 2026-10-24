.class public Lcom/shabakaty/downloader/e94$c;
.super Lcom/shabakaty/downloader/e94$d;
.source "SmartList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/e94$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final s:I

.field public final synthetic t:Lcom/shabakaty/downloader/e94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e94;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/e94$c;->t:Lcom/shabakaty/downloader/e94;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/e94$d;-><init>(Lcom/shabakaty/downloader/e94$a;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e94;->h(Lcom/shabakaty/downloader/e94;)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/e94$c;->s:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e94$c;->t:Lcom/shabakaty/downloader/e94;

    invoke-static {v0}, Lcom/shabakaty/downloader/e94;->i(Lcom/shabakaty/downloader/e94;)I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/e94$c;->s:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ModCount: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/e94$c;->t:Lcom/shabakaty/downloader/e94;

    invoke-static {v2}, Lcom/shabakaty/downloader/e94;->l(Lcom/shabakaty/downloader/e94;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shabakaty/downloader/e94$c;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e94$c;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e94$c;->t:Lcom/shabakaty/downloader/e94;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/e94;->clear()V

    return-void
.end method
