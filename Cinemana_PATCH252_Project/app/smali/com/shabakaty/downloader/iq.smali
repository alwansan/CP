.class public final Lcom/shabakaty/downloader/iq;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/iq$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/shabakaty/downloader/p64;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/iq$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/on0;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/shabakaty/downloader/on0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/iq;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 5
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(JJ)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/iq$a;

    .line 3
    iget-wide v3, v2, Lcom/shabakaty/downloader/iq$a;->b:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    .line 4
    iget-wide v2, v2, Lcom/shabakaty/downloader/iq$a;->a:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    cmp-long v8, p3, v5

    if-nez v8, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-wide v5, v2, Lcom/shabakaty/downloader/iq$a;->a:J

    cmp-long v2, v5, p1

    if-gtz v2, :cond_0

    add-long v8, p1, p3

    add-long/2addr v5, v3

    cmp-long v2, v8, v5

    if-gtz v2, :cond_0

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_3

    return v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/iq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/iq;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/iq;->a:I

    iget v3, p1, Lcom/shabakaty/downloader/iq;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    iget-object p1, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 6
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/on0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/iq;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/on0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
