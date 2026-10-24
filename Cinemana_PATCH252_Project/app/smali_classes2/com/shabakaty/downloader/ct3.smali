.class public abstract Lcom/shabakaty/downloader/ct3;
.super Lcom/shabakaty/downloader/bt3;
.source "ContinuationImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/bt3;",
        "Lcom/shabakaty/downloader/tn1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final s:I


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/bt3;-><init>(Lcom/shabakaty/downloader/ud0;)V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ct3;->s:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ct3;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bj;->r:Lcom/shabakaty/downloader/ud0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/dq3;->d(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shabakaty/downloader/bj;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
