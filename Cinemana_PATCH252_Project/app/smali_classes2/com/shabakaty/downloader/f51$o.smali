.class public abstract Lcom/shabakaty/downloader/f51$o;
.super Lcom/shabakaty/downloader/f51;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f51;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/f51$o;->a:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v0, Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, v0, Lcom/shabakaty/downloader/wu0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f51$o;->b(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)I

    move-result p1

    .line 4
    iget p2, p0, Lcom/shabakaty/downloader/f51$o;->a:I

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    sub-int v3, p1, v2

    mul-int v3, v3, p2

    if-ltz v3, :cond_3

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract b(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)I
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/f51$o;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f51$o;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f51$o;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/shabakaty/downloader/f51$o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%dn)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f51$o;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lcom/shabakaty/downloader/f51$o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/f51$o;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":%s(%dn%+d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
