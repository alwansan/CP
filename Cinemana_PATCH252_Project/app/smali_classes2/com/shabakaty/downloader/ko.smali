.class public final Lcom/shabakaty/downloader/ko;
.super Lcom/shabakaty/downloader/gm;
.source "BuiltInsBinaryVersion.kt"


# static fields
.field public static final f:Lcom/shabakaty/downloader/ko;

.field public static final g:Lcom/shabakaty/downloader/ko;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ko;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ko;-><init>([I)V

    sput-object v0, Lcom/shabakaty/downloader/ko;->g:Lcom/shabakaty/downloader/ko;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ko;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ko;-><init>([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x7
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/gm;-><init>([I)V

    return-void
.end method

.method public static final c(Ljava/io/InputStream;)Lcom/shabakaty/downloader/ko;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/n22;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/m22;

    .line 5
    iget-boolean v2, v2, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz v2, :cond_0

    .line 6
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/k22;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/k22;->a()I

    .line 7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [I

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 10
    aput v3, v0, v2

    move v2, v4

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    new-instance v0, Lcom/shabakaty/downloader/ko;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ko;-><init>([I)V

    return-object v0
.end method
