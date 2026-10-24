.class public final Lcom/shabakaty/downloader/ac2$b;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ac2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/ArrayList<",
        "Lcom/shabakaty/downloader/cd2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ac2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ac2;->g()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->e(Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/ao3;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/dd2;

    iget-object v6, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    sget-object v7, Lcom/shabakaty/downloader/cd2$a;->r:Lcom/shabakaty/downloader/cd2$a;

    new-instance v8, Lcom/shabakaty/downloader/bc2;

    invoke-direct {v8, v2}, Lcom/shabakaty/downloader/bc2;-><init>(Lcom/shabakaty/downloader/ao3;)V

    invoke-direct {v5, v6, v3, v7, v8}, Lcom/shabakaty/downloader/dd2;-><init>(Lcom/shabakaty/downloader/ac2;ILcom/shabakaty/downloader/cd2$a;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    new-instance v6, Lcom/shabakaty/downloader/dd2;

    iget-object v7, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lcom/shabakaty/downloader/cd2$a;->s:Lcom/shabakaty/downloader/cd2$a;

    new-instance v10, Lcom/shabakaty/downloader/cc2;

    invoke-direct {v10, v5}, Lcom/shabakaty/downloader/cc2;-><init>(Lcom/shabakaty/downloader/ao3;)V

    invoke-direct {v6, v7, v2, v9, v10}, Lcom/shabakaty/downloader/dd2;-><init>(Lcom/shabakaty/downloader/ac2;ILcom/shabakaty/downloader/cd2$a;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_3

    add-int/lit8 v6, v3, 0x1

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/dd2;

    iget-object v8, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    add-int/lit8 v9, v2, 0x1

    sget-object v10, Lcom/shabakaty/downloader/cd2$a;->t:Lcom/shabakaty/downloader/cd2$a;

    new-instance v11, Lcom/shabakaty/downloader/dc2;

    invoke-direct {v11, v0, v3}, Lcom/shabakaty/downloader/dc2;-><init>(Lcom/shabakaty/downloader/tq;I)V

    invoke-direct {v7, v8, v2, v10, v11}, Lcom/shabakaty/downloader/dd2;-><init>(Lcom/shabakaty/downloader/ac2;ILcom/shabakaty/downloader/cd2$a;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    move v2, v9

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ac2$b;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ac2;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v0, v0, Lcom/shabakaty/downloader/p62;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    new-instance v0, Lcom/shabakaty/downloader/ec2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ec2;-><init>()V

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j50;->P(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method
