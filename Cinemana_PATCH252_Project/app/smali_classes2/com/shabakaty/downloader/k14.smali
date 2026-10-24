.class public Lcom/shabakaty/downloader/k14;
.super Lcom/shabakaty/downloader/j14;
.source "ServiceInfoImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ni0;
.implements Lcom/shabakaty/downloader/xi0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k14$a;
    }
.end annotation


# static fields
.field public static J:Ljava/util/logging/Logger;


# instance fields
.field public A:I

.field public B:[B

.field public C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field public transient F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field public final I:Lcom/shabakaty/downloader/k14$a;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k14;->J:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/j14;)V
    .locals 6

    .line 17
    invoke-direct {p0}, Lcom/shabakaty/downloader/j14;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->s:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->t:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->u:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->v:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->w:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->k()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/k14;->y:I

    .line 26
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->t()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/k14;->z:I

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->l()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/k14;->A:I

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->B:[B

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/k14;->G:Z

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->i()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 31
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 32
    iget-object v5, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->h()[Ljava/net/Inet4Address;

    move-result-object p1

    .line 34
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 35
    iget-object v3, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/k14$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/k14$a;-><init>(Lcom/shabakaty/downloader/k14;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j14$a;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/j14;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/k14;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->s:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->s:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->t:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->t:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->u:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->v:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->w:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/shabakaty/downloader/k14;->y:I

    .line 9
    iput p3, p0, Lcom/shabakaty/downloader/k14;->z:I

    .line 10
    iput p4, p0, Lcom/shabakaty/downloader/k14;->A:I

    .line 11
    iput-object p6, p0, Lcom/shabakaty/downloader/k14;->B:[B

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/shabakaty/downloader/k14;->H:Z

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/k14$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/k14$a;-><init>(Lcom/shabakaty/downloader/k14;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 14
    iput-boolean p5, p0, Lcom/shabakaty/downloader/k14;->G:Z

    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    .line 16
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j14$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in-addr.arpa"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ip6.arpa"

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v2, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "_"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2e

    const-string v6, "."

    if-nez v2, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "._"

    if-eqz v2, :cond_2

    const-string v2, "_services"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 9
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object v9, v0

    goto :goto_0

    :cond_4
    move-object v9, v0

    move-object v8, v5

    .line 13
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    add-int/lit8 v2, v2, 0x2

    .line 14
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 15
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v5

    .line 16
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 17
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 19
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    sub-int/2addr v3, v6

    if-le v3, v1, :cond_6

    .line 20
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    .line 21
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object v1, v5

    .line 22
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v3, "._sub"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_9

    add-int/lit8 v3, p0, 0x5

    .line 23
    invoke-virtual {v0, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, p0

    :cond_9
    move-object p0, v5

    move-object v5, v2

    goto :goto_7

    .line 25
    :cond_a
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 26
    :goto_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    move-object v8, v1

    move-object v0, v5

    move-object v1, p0

    move-object p0, v0

    .line 28
    :goto_7
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    sget-object v3, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    invoke-static {v1}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->s:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->t:Lcom/shabakaty/downloader/j14$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "_"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static J(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_1

    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    .line 4
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 5
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 6
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    .line 7
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 8
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static y(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j14$a;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j14$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "local"

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 4
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->s:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "tcp"

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v2

    .line 8
    :cond_5
    :goto_3
    invoke-static {v3}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->t:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_6

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_7

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move-object v2, v3

    .line 12
    :cond_8
    invoke-static {v2}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_a

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move-object v2, v3

    .line 16
    :cond_b
    invoke-static {v2}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_6

    :cond_c
    move-object p0, v3

    :goto_6
    if-eqz p0, :cond_e

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move-object v3, p0

    .line 20
    :cond_e
    :goto_7
    invoke-static {v3}, Lcom/shabakaty/downloader/k14;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k14;->F:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->F:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j14$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->s:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->t:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "_"

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "._sub."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E([BII)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p2, 0x4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p3, :cond_2

    return-object v4

    :pswitch_1
    add-int/lit8 v3, v2, 0x2

    if-lt v3, p3, :cond_0

    return-object v4

    :cond_0
    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0xc

    add-int/lit8 v3, v2, 0x1

    .line 3
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr p2, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr p2, v3

    goto :goto_2

    :pswitch_2
    if-lt v2, p3, :cond_1

    return-object v4

    :cond_1
    and-int/lit8 p2, p2, 0x1f

    shl-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v2, 0x1

    .line 4
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    goto :goto_1

    :cond_2
    and-int/lit8 p2, p2, 0x3f

    shl-int/lit8 p2, p2, 0x4

    .line 5
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    :goto_1
    or-int/2addr p2, v2

    move v2, v3

    :goto_2
    :pswitch_3
    int-to-char p2, p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v2

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->i()Z

    const/4 v0, 0x1

    return v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->v:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->F:Ljava/lang/String;

    return-void
.end method

.method public I(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/k14;->H:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k14$a;->k(Lcom/shabakaty/downloader/yi0;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/shabakaty/downloader/ji0;JLcom/shabakaty/downloader/li0;)V
    .locals 4

    .line 1
    instance-of v0, p4, Lcom/shabakaty/downloader/ri0;

    if-eqz v0, :cond_b

    invoke-virtual {p4, p2, p3}, Lcom/shabakaty/downloader/li0;->i(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/16 v3, 0xc

    if-eq v0, v3, :cond_6

    const/16 v3, 0x10

    if-eq v0, v3, :cond_5

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_4

    const/16 v3, 0x21

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    check-cast p4, Lcom/shabakaty/downloader/ri0$f;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v3, p4, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 8
    :goto_1
    iget-object v3, p4, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 9
    iput-object v3, p0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    .line 10
    iget v3, p4, Lcom/shabakaty/downloader/ri0$f;->o:I

    .line 11
    iput v3, p0, Lcom/shabakaty/downloader/k14;->y:I

    .line 12
    iget v3, p4, Lcom/shabakaty/downloader/ri0$f;->n:I

    .line 13
    iput v3, p0, Lcom/shabakaty/downloader/k14;->z:I

    .line 14
    iget p4, p4, Lcom/shabakaty/downloader/ri0$f;->m:I

    .line 15
    iput p4, p0, Lcom/shabakaty/downloader/k14;->A:I

    if-eqz v0, :cond_8

    .line 16
    iget-object p4, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 17
    iget-object p4, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 18
    iget-object p4, p0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    sget-object v0, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    invoke-virtual {p1, p4, v0, v2}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/li0;

    .line 19
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shabakaty/downloader/k14;->a(Lcom/shabakaty/downloader/ji0;JLcom/shabakaty/downloader/li0;)V

    goto :goto_2

    .line 20
    :cond_3
    iget-object p4, p0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    sget-object v0, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    invoke-virtual {p1, p4, v0, v2}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/li0;

    .line 21
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shabakaty/downloader/k14;->a(Lcom/shabakaty/downloader/ji0;JLcom/shabakaty/downloader/li0;)V

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    check-cast p4, Lcom/shabakaty/downloader/ri0$a;

    .line 24
    iget-object p2, p4, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    .line 25
    check-cast p2, Ljava/net/Inet6Address;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :cond_5
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    check-cast p4, Lcom/shabakaty/downloader/ri0$g;

    .line 28
    iget-object p1, p4, Lcom/shabakaty/downloader/ri0$g;->m:[B

    .line 29
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->B:[B

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->C:Ljava/util/Map;

    goto :goto_4

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 32
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->w:Ljava/lang/String;

    goto :goto_4

    .line 33
    :cond_7
    invoke-virtual {p4}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    check-cast p4, Lcom/shabakaty/downloader/ri0$a;

    .line 35
    iget-object p2, p4, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    .line 36
    check-cast p2, Ljava/net/Inet4Address;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const/4 v1, 0x1

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 38
    iget-object p1, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 39
    iget-object p1, p1, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-eqz p1, :cond_a

    .line 40
    new-instance p2, Lcom/shabakaty/downloader/i14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4, p0}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    .line 41
    iget-object p3, p1, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    iget-object p4, p2, Lcom/shabakaty/downloader/i14;->r:Ljava/lang/String;

    .line 43
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_a

    .line 44
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a

    .line 45
    iget-object p4, p2, Lcom/shabakaty/downloader/i14;->t:Lcom/shabakaty/downloader/j14;

    if-eqz p4, :cond_a

    .line 46
    invoke-virtual {p4}, Lcom/shabakaty/downloader/j14;->u()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 47
    monitor-enter p3

    .line 48
    :try_start_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shabakaty/downloader/ti2$a;

    .line 51
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/downloader/c92;

    invoke-direct {v1, p1, p4, p2}, Lcom/shabakaty/downloader/c92;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$a;Lcom/shabakaty/downloader/h14;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 53
    :cond_a
    monitor-enter p0

    .line 54
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit p0

    goto :goto_7

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_b
    :goto_7
    return-void
.end method

.method public bridge synthetic b()Lcom/shabakaty/downloader/j14;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->z()Lcom/shabakaty/downloader/k14;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->z()Lcom/shabakaty/downloader/k14;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/yi0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xi0$b;->e(Lcom/shabakaty/downloader/yi0;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/k14;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "local"

    :goto_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->h()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->i()[Ljava/net/Inet6Address;

    move-result-object v1

    .line 3
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 5
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 6
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 7
    array-length v6, v0

    add-int/2addr v6, v5

    const-string v7, "["

    invoke-static {v7}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    .line 8
    aget-object v0, v3, v4

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public h()[Ljava/net/Inet4Address;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[Ljava/net/Inet6Address;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k14;->y:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k14;->A:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tcp"

    :goto_0
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->m()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    const-string v7, "."

    if-lez v5, :cond_0

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "_"

    if-lez v3, :cond_1

    invoke-static {v5, v2, v7}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v5, v1, v7}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-static {v4, v6, v0, v7}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public r()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->B:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ri0;->l:[B

    :goto_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->m()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "_"

    const-string v6, ""

    const-string v7, "."

    if-lez v4, :cond_0

    invoke-static {v5, v2, v7}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v5, v1, v7}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {v3, v6, v0, v7}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k14;->z:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/k14;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name: \'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' address: \'"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    .line 10
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 11
    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget v5, p0, Lcom/shabakaty/downloader/k14;->y:I

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "(null):"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/shabakaty/downloader/k14;->y:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\' status: \'"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xi0$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Lcom/shabakaty/downloader/k14;->G:Z

    if-eqz v1, :cond_3

    const-string v1, "\' is persistent,"

    goto :goto_2

    :cond_3
    const-string v1, "\',"

    .line 23
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    goto :goto_3

    :cond_4
    const-string v1, "NO "

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_e

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/k14;->C:Ljava/util/Map;

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v1

    if-eqz v1, :cond_b

    .line 30
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 31
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_9

    add-int v4, v5, v2

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v6

    array-length v6, v6

    if-le v4, v6, :cond_5

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_6

    .line 34
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v7

    add-int v8, v5, v6

    aget-byte v7, v7, v8

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 35
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v7

    invoke-virtual {p0, v7, v5, v6}, Lcom/shabakaty/downloader/k14;->E([BII)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 36
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto :goto_7

    :cond_7
    if-ne v6, v2, :cond_8

    .line 37
    sget-object v2, Lcom/shabakaty/downloader/j14;->r:[B

    invoke-virtual {v1, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v2, v6

    .line 38
    new-array v8, v2, [B

    .line 39
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v9

    add-int/2addr v5, v6

    invoke-static {v9, v5, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-virtual {v1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_4

    .line 41
    :cond_9
    :goto_6
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v2

    .line 42
    :try_start_2
    sget-object v3, Lcom/shabakaty/downloader/k14;->J:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Malformed TXT Field "

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_a
    :goto_7
    iput-object v1, p0, Lcom/shabakaty/downloader/k14;->C:Ljava/util/Map;

    .line 44
    :cond_b
    iget-object v1, p0, Lcom/shabakaty/downloader/k14;->C:Ljava/util/Map;

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    monitor-exit p0

    .line 45
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "\n"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\t"

    const-string v5, ": "

    .line 48
    invoke-static {v4, v3, v5}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    const-string v1, " empty"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0

    :cond_e
    :goto_a
    const/16 v1, 0x5d

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized u()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/k14;->G:Z

    return v0
.end method

.method public w([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->B:[B

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k14;->C:Ljava/util/Map;

    return-void
.end method

.method public x(Lcom/shabakaty/downloader/si0;ZILcom/shabakaty/downloader/jv1;)Ljava/util/Collection;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/si0;",
            "ZI",
            "Lcom/shabakaty/downloader/jv1;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/ri0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    if-ne v1, v3, :cond_2

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ri0$e;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->D()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/ri0$e;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->s()Ljava/lang/String;

    move-result-object v10

    sget-object v5, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v14

    move-object v9, v1

    move-object v11, v5

    move/from16 v13, p3

    invoke-direct/range {v9 .. v14}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/ri0$f;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v12

    iget v3, v0, Lcom/shabakaty/downloader/k14;->A:I

    iget v4, v0, Lcom/shabakaty/downloader/k14;->z:I

    iget v6, v0, Lcom/shabakaty/downloader/k14;->y:I

    move-object/from16 v7, p4

    .line 7
    iget-object v7, v7, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    move-object v11, v1

    move-object v13, v5

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 8
    invoke-direct/range {v11 .. v19}, Lcom/shabakaty/downloader/ri0$f;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZIIIILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/ri0$g;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v8

    move-object v3, v1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/ri0$g;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method

.method public z()Lcom/shabakaty/downloader/k14;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->C()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/k14;->y:I

    iget v3, p0, Lcom/shabakaty/downloader/k14;->z:I

    iget v4, p0, Lcom/shabakaty/downloader/k14;->A:I

    iget-boolean v5, p0, Lcom/shabakaty/downloader/k14;->G:Z

    iget-object v6, p0, Lcom/shabakaty/downloader/k14;->B:[B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->i()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 4
    iget-object v5, v7, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k14;->h()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 6
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    iget-object v4, v7, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v7
.end method
