.class public final Lcom/shabakaty/downloader/vo3;
.super Lcom/shabakaty/downloader/so3;
.source "ReflectJavaAnnotationArguments.kt"

# interfaces
.implements Lcom/shabakaty/downloader/n62;


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/so3;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/vo3;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/so3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vo3;->b:[Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 4
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const-string v6, "value"

    .line 5
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/qo3;->a:Ljava/util/List;

    const-string v7, "<this>"

    .line 7
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v7, Ljava/lang/Enum;

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/lp3;

    check-cast v4, Ljava/lang/Enum;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/lp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Enum;)V

    goto :goto_1

    .line 10
    :cond_0
    instance-of v6, v4, Ljava/lang/annotation/Annotation;

    if-eqz v6, :cond_1

    new-instance v6, Lcom/shabakaty/downloader/to3;

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/to3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 11
    :cond_1
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    new-instance v6, Lcom/shabakaty/downloader/vo3;

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/vo3;-><init>(Lcom/shabakaty/downloader/hw2;[Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_3

    new-instance v6, Lcom/shabakaty/downloader/hp3;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/hp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Class;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v6, Lcom/shabakaty/downloader/np3;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/np3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V

    .line 14
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
