.class public final Lcom/shabakaty/downloader/xt6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/ut6<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/shabakaty/downloader/g37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/g37<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/xt6;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xt6;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/s17;

    const/16 v1, 0x10

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s17;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    new-instance p1, Lcom/shabakaty/downloader/s17;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/s17;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xt6;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s17;->a()V

    iput-boolean v1, p0, Lcom/shabakaty/downloader/xt6;->b:Z

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xt6;->b:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s17;->a()V

    iput-boolean v1, p0, Lcom/shabakaty/downloader/xt6;->b:Z

    :goto_1
    return-void
.end method

.method public static final b(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/ut6;->b()Lcom/shabakaty/downloader/f57;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/hw6;->a:Ljava/nio/charset/Charset;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/f57;->s:Lcom/shabakaty/downloader/f57;

    sget-object v1, Lcom/shabakaty/downloader/i57;->s:Lcom/shabakaty/downloader/i57;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/f57;->r:Lcom/shabakaty/downloader/i57;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 7
    :pswitch_0
    instance-of v0, p1, Lcom/shabakaty/downloader/q07;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :pswitch_2
    instance-of v0, p1, Lcom/shabakaty/downloader/ir6;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 11
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 12
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 13
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 14
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 15
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    .line 16
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 17
    invoke-interface {p0}, Lcom/shabakaty/downloader/ut6;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 18
    invoke-interface {p0}, Lcom/shabakaty/downloader/ut6;->b()Lcom/shabakaty/downloader/f57;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/shabakaty/downloader/f57;->r:Lcom/shabakaty/downloader/i57;

    aput-object p0, v1, v2

    const/4 p0, 0x2

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 21
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ut6;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/xt6;->b(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/xt6;->b(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/g37;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/xt6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/xt6;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/g37;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 3
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/g37;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ut6;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/xt6;->a(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/g37;->t:Ljava/util/Map;

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/shabakaty/downloader/b27;->b:Ljava/lang/Iterable;

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/g37;->t:Ljava/util/Map;

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ut6;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/xt6;->a(Lcom/shabakaty/downloader/ut6;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/xt6;->c:Z

    iput-boolean v1, v0, Lcom/shabakaty/downloader/xt6;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/xt6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/xt6;

    iget-object v0, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g37;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xt6;->a:Lcom/shabakaty/downloader/g37;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g37;->hashCode()I

    move-result v0

    return v0
.end method
