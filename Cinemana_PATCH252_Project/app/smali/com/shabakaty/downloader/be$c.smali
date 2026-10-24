.class public final Lcom/shabakaty/downloader/be$c;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lcom/shabakaty/downloader/be$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    iput-object p1, p0, Lcom/shabakaty/downloader/be$c;->a:Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/shabakaty/downloader/be$c;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/be$c;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/be$c;->b:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/be$c;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/be$c;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/be$c;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/be$c;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/be$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/be$c;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/be$c;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 6
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/be$c;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
