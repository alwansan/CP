.class public final Lcom/shabakaty/downloader/dm2$d;
.super Lcom/shabakaty/downloader/dm2$c;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/shabakaty/downloader/uc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dm2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/dm2$c<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dm2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/dm2<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dm2$c;-><init>(Lcom/shabakaty/downloader/dm2;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dm2$c;->s:I

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dm2$c;->r:Lcom/shabakaty/downloader/dm2;

    .line 3
    iget v2, v1, Lcom/shabakaty/downloader/dm2;->w:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/dm2$c;->s:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/dm2$c;->t:I

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/dm2;->r:[Ljava/lang/Object;

    .line 7
    aget-object v0, v1, v0

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dm2$c;->a()V

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
