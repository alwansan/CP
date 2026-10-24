.class public Lcom/shabakaty/downloader/fu3$d;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lcom/shabakaty/downloader/ep$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/fu3$c;

.field public s:Lcom/shabakaty/downloader/ep$a;

.field public t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fu3;Lcom/shabakaty/downloader/fu3$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/fu3$c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/fu3$c;-><init>(Lcom/shabakaty/downloader/ep;Lcom/shabakaty/downloader/fu3$a;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/fu3$d;->r:Lcom/shabakaty/downloader/fu3$c;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/fu3$c;->a()Lcom/shabakaty/downloader/wi2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/wi2;->s()Lcom/shabakaty/downloader/ep$a;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/fu3$d;->s:Lcom/shabakaty/downloader/ep$a;

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/fu3;->s:I

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/fu3$d;->t:I

    return-void
.end method


# virtual methods
.method public f()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fu3$d;->s:Lcom/shabakaty/downloader/ep$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fu3$d;->r:Lcom/shabakaty/downloader/fu3$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fu3$c;->a()Lcom/shabakaty/downloader/wi2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wi2;->s()Lcom/shabakaty/downloader/ep$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/fu3$d;->s:Lcom/shabakaty/downloader/ep$a;

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/fu3$d;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/fu3$d;->t:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/fu3$d;->s:Lcom/shabakaty/downloader/ep$a;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ep$a;->f()B

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fu3$d;->t:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fu3$d;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
