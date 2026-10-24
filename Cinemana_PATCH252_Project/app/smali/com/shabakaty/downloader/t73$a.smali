.class public final Lcom/shabakaty/downloader/t73$a;
.super Lcom/shabakaty/downloader/a85$a;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/t73;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/a85$a<",
        "Lcom/shabakaty/downloader/t73$a;",
        "Lcom/shabakaty/downloader/t73;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a85$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/a85;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/d85;->q:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/gc0;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/t73;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/t73;-><init>(Lcom/shabakaty/downloader/t73$a;)V

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/a85$a;
    .locals 0

    return-object p0
.end method
