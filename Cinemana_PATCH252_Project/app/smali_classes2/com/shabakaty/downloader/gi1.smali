.class public final Lcom/shabakaty/downloader/gi1;
.super Ljava/lang/Object;
.source "FqNameUnsafe.java"


# static fields
.field public static final e:Lcom/shabakaty/downloader/hw2;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public transient b:Lcom/shabakaty/downloader/fi1;

.field public transient c:Lcom/shabakaty/downloader/gi1;

.field public transient d:Lcom/shabakaty/downloader/hw2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "<root>"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/gi1;->e:Lcom/shabakaty/downloader/hw2;

    const-string v0, "\\."

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/gi1;->f:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/gi1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gi1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gi1;->g:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/fi1;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gi1;->b:Lcom/shabakaty/downloader/fi1;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/gi1;Lcom/shabakaty/downloader/hw2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/gi1;->c:Lcom/shabakaty/downloader/gi1;

    .line 11
    iput-object p3, p0, Lcom/shabakaty/downloader/gi1;->d:Lcom/shabakaty/downloader/hw2;

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic a(I)V
    .locals 8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "shortName"

    const-string v4, "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_0

    packed-switch p0, :pswitch_data_2

    const-string v7, "fqName"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_4
    aput-object v3, v2, v5

    goto :goto_2

    :pswitch_5
    const-string v7, "segment"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_6
    const-string v7, "name"

    aput-object v7, v2, v5

    goto :goto_2

    :pswitch_7
    aput-object v4, v2, v5

    goto :goto_2

    :cond_0
    const-string v7, "safe"

    aput-object v7, v2, v5

    :goto_2
    packed-switch p0, :pswitch_data_3

    :pswitch_8
    aput-object v4, v2, v6

    goto :goto_3

    :pswitch_9
    const-string v3, "toString"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_a
    const-string v3, "pathSegments"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_b
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_c
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_d
    const-string v3, "parent"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_e
    const-string v3, "toSafe"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_f
    const-string v3, "asString"

    aput-object v3, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_10
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_11
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_12
    const-string v3, "child"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/gi1;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/gi1;

    invoke-direct {v1, v0, p0, p1}, Lcom/shabakaty/downloader/gi1;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/gi1;Lcom/shabakaty/downloader/hw2;)V

    return-object v1

    :cond_1
    const/16 p1, 0x9

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/hw2;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/gi1;->d:Lcom/shabakaty/downloader/hw2;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/gi1;

    iget-object v2, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/gi1;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/gi1;->c:Lcom/shabakaty/downloader/gi1;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/gi1;->d:Lcom/shabakaty/downloader/hw2;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/fi1;->c:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/gi1;->c:Lcom/shabakaty/downloader/gi1;

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/gi1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/gi1;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->b:Lcom/shabakaty/downloader/fi1;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/gi1;->f:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/gi1;->g:Lcom/shabakaty/downloader/tm1;

    const-string v2, "<this>"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transform"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 5
    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/gi1$a;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/gi1$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/16 v0, 0xe

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Lcom/shabakaty/downloader/hw2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->d:Lcom/shabakaty/downloader/hw2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    throw v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->d()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->d:Lcom/shabakaty/downloader/hw2;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    throw v1

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "root"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->b:Lcom/shabakaty/downloader/fi1;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/fi1;-><init>(Lcom/shabakaty/downloader/gi1;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/gi1;->b:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/gi1;->e:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gi1;->a:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/shabakaty/downloader/gi1;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method
