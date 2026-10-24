.class public final Lcom/shabakaty/downloader/w8$a;
.super Ljava/lang/Object;
.source "AnnotationTypeQualifierResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/r8;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r8;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w8$a;->a:Lcom/shabakaty/downloader/r8;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/w8$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/u8;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/u8;->values()[Lcom/shabakaty/downloader/u8;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iget v6, p0, Lcom/shabakaty/downloader/w8$a;->b:I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    shl-int v7, v8, v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget v6, p0, Lcom/shabakaty/downloader/w8$a;->b:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 6
    sget-object v6, Lcom/shabakaty/downloader/u8;->w:Lcom/shabakaty/downloader/u8;

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_0

    .line 7
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method
