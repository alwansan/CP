.class public final Lcom/shabakaty/downloader/ix2;
.super Lcom/shabakaty/downloader/af2;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/u7;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroidx/navigation/g;


# direct methods
.method public constructor <init>(Landroidx/navigation/g;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ix2;->r:Landroidx/navigation/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/u7;

    const-string v0, "$this$anim"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ix2;->r:Landroidx/navigation/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Landroidx/navigation/g;->d:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget v0, p1, Lcom/shabakaty/downloader/u7;->a:I

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    :goto_1
    iput v0, p1, Lcom/shabakaty/downloader/u7;->a:I

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ix2;->r:Landroidx/navigation/g;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 10
    :cond_2
    iget v0, v0, Landroidx/navigation/g;->e:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    .line 12
    iget v0, p1, Lcom/shabakaty/downloader/u7;->b:I

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14
    :goto_3
    iput v0, p1, Lcom/shabakaty/downloader/u7;->b:I

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ix2;->r:Landroidx/navigation/g;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    .line 16
    :cond_4
    iget v0, v0, Landroidx/navigation/g;->f:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    .line 18
    iget v0, p1, Lcom/shabakaty/downloader/u7;->c:I

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    :goto_5
    iput v0, p1, Lcom/shabakaty/downloader/u7;->c:I

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/ix2;->r:Landroidx/navigation/g;

    if-nez v0, :cond_6

    goto :goto_6

    .line 22
    :cond_6
    iget v0, v0, Landroidx/navigation/g;->g:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_7

    .line 24
    iget v0, p1, Lcom/shabakaty/downloader/u7;->d:I

    goto :goto_7

    .line 25
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 26
    :goto_7
    iput v0, p1, Lcom/shabakaty/downloader/u7;->d:I

    .line 27
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
