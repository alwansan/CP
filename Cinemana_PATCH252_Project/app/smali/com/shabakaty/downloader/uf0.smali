.class public Lcom/shabakaty/downloader/uf0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/shabakaty/downloader/tf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf0;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uf0;->t:Lcom/shabakaty/downloader/tf0;

    iput-wide p2, p0, Lcom/shabakaty/downloader/uf0;->r:J

    iput-object p4, p0, Lcom/shabakaty/downloader/uf0;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf0;->t:Lcom/shabakaty/downloader/tf0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uf0;->t:Lcom/shabakaty/downloader/tf0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->i:Lcom/shabakaty/downloader/hk2;

    .line 4
    iget-wide v1, p0, Lcom/shabakaty/downloader/uf0;->r:J

    iget-object v3, p0, Lcom/shabakaty/downloader/uf0;->s:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/xa1;->c(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
