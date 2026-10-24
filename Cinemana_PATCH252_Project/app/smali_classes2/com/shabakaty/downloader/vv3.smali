.class public final Lcom/shabakaty/downloader/vv3;
.super Ljava/lang/Object;
.source "RxJava2CallAdapter.java"

# interfaces
.implements Lcom/shabakaty/downloader/oq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/oq<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wx3;ZZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vv3;->a:Ljava/lang/reflect/Type;

    .line 3
    iput-boolean p4, p0, Lcom/shabakaty/downloader/vv3;->b:Z

    .line 4
    iput-boolean p5, p0, Lcom/shabakaty/downloader/vv3;->c:Z

    .line 5
    iput-boolean p6, p0, Lcom/shabakaty/downloader/vv3;->d:Z

    .line 6
    iput-boolean p7, p0, Lcom/shabakaty/downloader/vv3;->e:Z

    .line 7
    iput-boolean p8, p0, Lcom/shabakaty/downloader/vv3;->f:Z

    .line 8
    iput-boolean p9, p0, Lcom/shabakaty/downloader/vv3;->g:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv3;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/nq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pq;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pq;-><init>(Lcom/shabakaty/downloader/nq;)V

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->b:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ht3;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ht3;-><init>(Lcom/shabakaty/downloader/t43;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->c:Z

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/tm;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/tm;-><init>(Lcom/shabakaty/downloader/t43;)V

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t43;->l(I)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->e:Z

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/k53;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/k53;-><init>(Lcom/shabakaty/downloader/l53;Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->f:Z

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/j53;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/j53;-><init>(Lcom/shabakaty/downloader/l53;)V

    return-object p1

    .line 12
    :cond_4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/vv3;->g:Z

    if-eqz p1, :cond_5

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/a53;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/a53;-><init>(Lcom/shabakaty/downloader/l53;)V

    return-object p1

    :cond_5
    return-object v0
.end method
