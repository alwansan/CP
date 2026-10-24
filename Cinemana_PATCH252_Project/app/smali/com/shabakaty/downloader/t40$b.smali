.class public final Lcom/shabakaty/downloader/t40$b;
.super Lcom/shabakaty/downloader/t40;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/t40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:[B

.field public final c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([BIIZLcom/shabakaty/downloader/t40$a;)V
    .locals 0

    const/4 p5, 0x0

    .line 1
    invoke-direct {p0, p5}, Lcom/shabakaty/downloader/t40;-><init>(Lcom/shabakaty/downloader/t40$a;)V

    const p5, 0x7fffffff

    .line 2
    iput p5, p0, Lcom/shabakaty/downloader/t40$b;->h:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/t40$b;->b:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/t40$b;->d:I

    .line 5
    iput p2, p0, Lcom/shabakaty/downloader/t40$b;->f:I

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/t40$b;->g:I

    .line 7
    iput-boolean p4, p0, Lcom/shabakaty/downloader/t40$b;->c:Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/t40$b;->f:I

    iget v1, p0, Lcom/shabakaty/downloader/t40$b;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t40$b;->b()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/t40$b;->h:I

    if-gt v0, p1, :cond_0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/t40$b;->h:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t40$b;->d()V

    return p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/r32;->c()Lcom/shabakaty/downloader/r32;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/r32;->b()Lcom/shabakaty/downloader/r32;

    move-result-object p1

    throw p1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/t40$b;->d:I

    iget v1, p0, Lcom/shabakaty/downloader/t40$b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/t40$b;->d:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/t40$b;->g:I

    sub-int v1, v0, v1

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/t40$b;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/t40$b;->e:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/t40$b;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/t40$b;->e:I

    :goto_0
    return-void
.end method
