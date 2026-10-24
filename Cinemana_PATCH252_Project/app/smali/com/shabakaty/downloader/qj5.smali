.class public final Lcom/shabakaty/downloader/qj5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/shabakaty/downloader/gj5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ck5;I)V
    .locals 2

    iput p2, p0, Lcom/shabakaty/downloader/qj5;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uf5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/qj5;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/shabakaty/downloader/qj5;->s:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/qj5;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v3, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ck5;

    .line 2
    iget-object v3, v3, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 4
    :pswitch_1
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v3, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ck5;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 7
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v3, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/uf5;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/qj5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck5;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    iget-object v1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck5;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/qj5;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shabakaty/downloader/qj5;->s:I

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 10
    :pswitch_1
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck5;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/ck5;->r:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    iget v1, p0, Lcom/shabakaty/downloader/qj5;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/qj5;->s:I

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 16
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 17
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/qj5;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/uf5;

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/qj5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/uf5;

    iget v1, p0, Lcom/shabakaty/downloader/qj5;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/qj5;->s:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/shabakaty/downloader/qj5;->s:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Out of bounds index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
