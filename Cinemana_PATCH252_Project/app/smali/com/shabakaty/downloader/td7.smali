.class public final Lcom/shabakaty/downloader/td7;
.super Lcom/shabakaty/downloader/tf7;
.source "com.google.mlkit:vision-common@@16.3.0"


# instance fields
.field public r:Z

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/td7;->s:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/shabakaty/downloader/tf7;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/td7;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/td7;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/td7;->r:Z

    iget-object v0, p0, Lcom/shabakaty/downloader/td7;->s:Ljava/lang/Object;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
