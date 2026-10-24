.class public final Lcom/shabakaty/downloader/ns1;
.super Ljava/lang/Object;
.source "HashPMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/ns1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ns1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/p22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/p22<",
            "Lcom/shabakaty/downloader/lb0<",
            "Lcom/shabakaty/downloader/hm2<",
            "TK;TV;>;>;>;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ns1;

    sget-object v1, Lcom/shabakaty/downloader/p22;->b:Lcom/shabakaty/downloader/p22;

    sget-object v1, Lcom/shabakaty/downloader/p22;->b:Lcom/shabakaty/downloader/p22;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ns1;-><init>(Lcom/shabakaty/downloader/p22;I)V

    sput-object v0, Lcom/shabakaty/downloader/ns1;->c:Lcom/shabakaty/downloader/ns1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/p22;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/p22<",
            "Lcom/shabakaty/downloader/lb0<",
            "Lcom/shabakaty/downloader/hm2<",
            "TK;TV;>;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ns1;->a:Lcom/shabakaty/downloader/p22;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ns1;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/shabakaty/downloader/ns1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/shabakaty/downloader/ns1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ns1;->a:Lcom/shabakaty/downloader/p22;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/p22;->a:Lcom/shabakaty/downloader/o22;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/o22;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/lb0;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/lb0;->u:Lcom/shabakaty/downloader/lb0;

    .line 6
    :cond_0
    iget v1, v0, Lcom/shabakaty/downloader/lb0;->t:I

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 7
    iget v5, v3, Lcom/shabakaty/downloader/lb0;->t:I

    if-lez v5, :cond_2

    .line 8
    iget-object v5, v3, Lcom/shabakaty/downloader/lb0;->r:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/hm2;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/hm2;->r:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, v3, Lcom/shabakaty/downloader/lb0;->s:Lcom/shabakaty/downloader/lb0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_4

    if-ltz v2, :cond_3

    .line 11
    iget v3, v0, Lcom/shabakaty/downloader/lb0;->t:I

    if-gt v2, v3, :cond_3

    .line 12
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/lb0;->h(I)Lcom/shabakaty/downloader/lb0;

    move-result-object v3

    .line 13
    iget-object v2, v3, Lcom/shabakaty/downloader/lb0;->r:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/lb0;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/lb0;

    move-result-object v0

    goto :goto_2

    .line 15
    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index: "

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 17
    :cond_4
    :goto_2
    new-instance v2, Lcom/shabakaty/downloader/hm2;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/hm2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/lb0;

    invoke-direct {p2, v2, v0}, Lcom/shabakaty/downloader/lb0;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/lb0;)V

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/ns1;

    iget-object v2, p0, Lcom/shabakaty/downloader/ns1;->a:Lcom/shabakaty/downloader/p22;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 20
    iget-object v3, v2, Lcom/shabakaty/downloader/p22;->a:Lcom/shabakaty/downloader/o22;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5, p2}, Lcom/shabakaty/downloader/o22;->b(JLjava/lang/Object;)Lcom/shabakaty/downloader/o22;

    move-result-object p1

    .line 21
    iget-object v3, v2, Lcom/shabakaty/downloader/p22;->a:Lcom/shabakaty/downloader/o22;

    if-ne p1, v3, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    new-instance v2, Lcom/shabakaty/downloader/p22;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/p22;-><init>(Lcom/shabakaty/downloader/o22;)V

    .line 23
    :goto_3
    iget p1, p0, Lcom/shabakaty/downloader/ns1;->b:I

    sub-int/2addr p1, v1

    .line 24
    iget p2, p2, Lcom/shabakaty/downloader/lb0;->t:I

    add-int/2addr p1, p2

    .line 25
    invoke-direct {v0, v2, p1}, Lcom/shabakaty/downloader/ns1;-><init>(Lcom/shabakaty/downloader/p22;I)V

    return-object v0
.end method
