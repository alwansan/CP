.class public abstract Lcom/shabakaty/downloader/c05$f;
.super Lcom/shabakaty/downloader/c05$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/c05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lcom/shabakaty/downloader/ya3$a;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/c05$e;-><init>(Lcom/shabakaty/downloader/c05$a;)V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/c05$f;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/c05$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/c05$e;-><init>(Lcom/shabakaty/downloader/c05$a;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/c05$f;->c:I

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/c05$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/c05$f;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Lcom/shabakaty/downloader/c05$f;->d:I

    iput v0, p0, Lcom/shabakaty/downloader/c05$f;->d:I

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    invoke-static {p1}, Lcom/shabakaty/downloader/ya3;->e([Lcom/shabakaty/downloader/ya3$a;)[Lcom/shabakaty/downloader/ya3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    return-void
.end method


# virtual methods
.method public getPathData()[Lcom/shabakaty/downloader/ya3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lcom/shabakaty/downloader/ya3$a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ya3;->a([Lcom/shabakaty/downloader/ya3$a;[Lcom/shabakaty/downloader/ya3$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/ya3;->e([Lcom/shabakaty/downloader/ya3$a;)[Lcom/shabakaty/downloader/ya3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c05$f;->a:[Lcom/shabakaty/downloader/ya3$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 5
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lcom/shabakaty/downloader/ya3$a;->a:C

    iput-char v4, v3, Lcom/shabakaty/downloader/ya3$a;->a:C

    const/4 v3, 0x0

    .line 6
    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/shabakaty/downloader/ya3$a;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 7
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/shabakaty/downloader/ya3$a;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/shabakaty/downloader/ya3$a;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
