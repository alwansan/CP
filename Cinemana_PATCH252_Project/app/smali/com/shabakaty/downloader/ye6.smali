.class public Lcom/shabakaty/downloader/ye6;
.super Lcom/shabakaty/downloader/rf6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/shabakaty/downloader/ye6<",
        "TM;>;>",
        "Lcom/shabakaty/downloader/rf6;"
    }
.end annotation


# instance fields
.field public s:Lcom/shabakaty/downloader/df6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/rf6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/me6;)V
    .locals 2

    iget-object p1, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    .line 1
    iget v1, v0, Lcom/shabakaty/downloader/df6;->t:I

    if-ge p1, v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/df6;->s:[Lcom/shabakaty/downloader/mf6;

    aget-object v0, v0, p1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mf6;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye6;->g()Lcom/shabakaty/downloader/ye6;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    .line 1
    iget v3, v2, Lcom/shabakaty/downloader/df6;->t:I

    if-ge v0, v3, :cond_0

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/df6;->s:[Lcom/shabakaty/downloader/mf6;

    aget-object v2, v2, v0

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mf6;->b()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public synthetic f()Lcom/shabakaty/downloader/rf6;
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ye6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ye6;

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/ye6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/shabakaty/downloader/rf6;->f()Lcom/shabakaty/downloader/rf6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ye6;

    sget-object v1, Lcom/shabakaty/downloader/qf6;->a:Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/df6;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/df6;

    iput-object v1, v0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    :cond_0
    return-object v0
.end method
