.class public final Lcom/shabakaty/downloader/fc3$a;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fc3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/squareup/picasso/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/fc3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/squareup/picasso/c;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fc3$a;->r:Lcom/squareup/picasso/c;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fc3$a;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fc3$a;->r:Lcom/squareup/picasso/c;

    .line 3
    iget v1, v0, Lcom/squareup/picasso/c;->J:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/fc3$a;->r:Lcom/squareup/picasso/c;

    .line 5
    iget v2, p1, Lcom/squareup/picasso/c;->J:I

    if-ne v1, v2, :cond_0

    .line 6
    iget v0, v0, Lcom/squareup/picasso/c;->r:I

    iget p1, p1, Lcom/squareup/picasso/c;->r:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method
