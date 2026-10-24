.class public Lcom/shabakaty/downloader/jr4$a;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/tz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/jr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/a55;

.field public final synthetic b:Lcom/shabakaty/downloader/jr4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jr4;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/jr4$a;->b:Lcom/shabakaty/downloader/jr4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/a55;

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p1, v4, v1}, Lcom/shabakaty/downloader/ka3;->d(Lcom/shabakaty/downloader/a55;I)V

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4$a;->a:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/jr4$a;->b:Lcom/shabakaty/downloader/jr4;

    .line 11
    iget-object v5, v5, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/jr4$a;->b:Lcom/shabakaty/downloader/jr4;

    .line 14
    iget-object v6, v5, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    .line 15
    new-instance v7, Lcom/shabakaty/downloader/uz3;

    new-instance v8, Lcom/shabakaty/downloader/jr4$b;

    invoke-direct {v8, v5, v4}, Lcom/shabakaty/downloader/jr4$b;-><init>(Lcom/shabakaty/downloader/jr4;I)V

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/uz3;-><init>(Lcom/shabakaty/downloader/tz3;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4$a;->b:Lcom/shabakaty/downloader/jr4;

    .line 17
    iget v5, v4, Lcom/shabakaty/downloader/jr4;->m:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/shabakaty/downloader/jr4;->m:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4$a;->b:Lcom/shabakaty/downloader/jr4;

    .line 19
    iget v0, p1, Lcom/shabakaty/downloader/jr4;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 0

    return-void
.end method
