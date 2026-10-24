.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 15
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ag6;

    const-class v1, Lcom/shabakaty/downloader/j30;

    const-class v2, Lcom/shabakaty/downloader/gr3$a;

    const-class v3, Lcom/shabakaty/downloader/zt2;

    sget-object v4, Lcom/shabakaty/downloader/d54;->b:Lcom/shabakaty/downloader/o80;

    const-class v5, Lcom/shabakaty/downloader/gu2;

    .line 2
    invoke-static {v5}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v5

    .line 3
    new-instance v6, Lcom/shabakaty/downloader/eq0;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v6, Lcom/shabakaty/downloader/td5;->a:Lcom/shabakaty/downloader/t80;

    .line 5
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 6
    invoke-virtual {v5}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v5

    const-class v6, Lcom/shabakaty/downloader/bu2;

    .line 7
    invoke-static {v6}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v6

    sget-object v9, Lcom/shabakaty/downloader/om5;->a:Lcom/shabakaty/downloader/t80;

    .line 8
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 9
    invoke-virtual {v6}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v6

    const-class v9, Lcom/shabakaty/downloader/gr3;

    .line 10
    invoke-static {v9}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v9

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/eq0;

    const/4 v11, 0x2

    invoke-direct {v10, v2, v11, v8}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v10, Lcom/shabakaty/downloader/ot5;->a:Lcom/shabakaty/downloader/t80;

    .line 13
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 14
    invoke-virtual {v9}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v9

    const-class v10, Lcom/shabakaty/downloader/x61;

    .line 15
    invoke-static {v10}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v10

    const-class v12, Lcom/shabakaty/downloader/bu2;

    .line 16
    new-instance v13, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v13, v12, v7, v7}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 17
    invoke-virtual {v10, v13}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v12, Lcom/shabakaty/downloader/xz5;->a:Lcom/shabakaty/downloader/t80;

    .line 18
    invoke-virtual {v10, v12}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 19
    invoke-virtual {v10}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v10

    .line 20
    invoke-static {v1}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v12

    sget-object v13, Lcom/shabakaty/downloader/f56;->a:Lcom/shabakaty/downloader/t80;

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v12

    const-class v13, Lcom/shabakaty/downloader/c40;

    .line 21
    invoke-static {v13}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v13

    .line 22
    new-instance v14, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v14, v1, v7, v8}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 23
    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v1, Lcom/shabakaty/downloader/ma6;->a:Lcom/shabakaty/downloader/t80;

    .line 24
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 25
    invoke-virtual {v13}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v1

    .line 26
    invoke-static {v0}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v13

    .line 27
    new-instance v14, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v14, v3, v7, v8}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 28
    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v3, Lcom/shabakaty/downloader/zf6;->a:Lcom/shabakaty/downloader/t80;

    .line 29
    invoke-virtual {v13, v3}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 30
    invoke-virtual {v13}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v3

    .line 31
    invoke-static {v2}, Lcom/shabakaty/downloader/o80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v2

    .line 32
    new-instance v13, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v13, v0, v7, v7}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 33
    invoke-virtual {v2, v13}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v0, Lcom/shabakaty/downloader/sk6;->a:Lcom/shabakaty/downloader/t80;

    .line 34
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 35
    invoke-virtual {v2}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    .line 36
    sget-object v2, Lcom/shabakaty/downloader/th5;->s:Lcom/shabakaty/downloader/se5;

    const/16 v2, 0x9

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v8

    aput-object v5, v13, v7

    aput-object v6, v13, v11

    const/4 v4, 0x3

    aput-object v9, v13, v4

    const/4 v4, 0x4

    aput-object v10, v13, v4

    const/4 v4, 0x5

    aput-object v12, v13, v4

    const/4 v4, 0x6

    aput-object v1, v13, v4

    const/4 v1, 0x7

    aput-object v3, v13, v1

    const/16 v1, 0x8

    aput-object v0, v13, v1

    :goto_0
    if-ge v8, v2, :cond_0

    .line 37
    aget-object v0, v13, v8

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/iq6;->B(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v13, v2}, Lcom/shabakaty/downloader/th5;->n([Ljava/lang/Object;I)Lcom/shabakaty/downloader/th5;

    move-result-object v0

    return-object v0
.end method
