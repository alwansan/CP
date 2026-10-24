.class public final Lcom/shabakaty/downloader/v26;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/m43;


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Lcom/shabakaty/downloader/ma1;

.field public static final g:Lcom/shabakaty/downloader/ma1;

.field public static final h:Lcom/shabakaty/downloader/l43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l43<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/l43<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/nz4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/l43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l43<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/v26;->e:Ljava/nio/charset/Charset;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x6

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 9
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "key"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 10
    sput-object v0, Lcom/shabakaty/downloader/v26;->f:Lcom/shabakaty/downloader/ma1;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 12
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v1, 0x2

    .line 13
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 18
    invoke-static {v1}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "value"

    invoke-direct {v0, v2, v1, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 19
    sput-object v0, Lcom/shabakaty/downloader/v26;->g:Lcom/shabakaty/downloader/ma1;

    .line 20
    sget-object v0, Lcom/shabakaty/downloader/r26;->a:Lcom/shabakaty/downloader/l43;

    sput-object v0, Lcom/shabakaty/downloader/v26;->h:Lcom/shabakaty/downloader/l43;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/l43<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/nz4<",
            "*>;>;",
            "Lcom/shabakaty/downloader/l43<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/shabakaty/downloader/v26;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/shabakaty/downloader/v26;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/shabakaty/downloader/v26;->d:Lcom/shabakaty/downloader/l43;

    return-void
.end method

.method public static j(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/shabakaty/downloader/ma1;)I
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/u16;

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/ma1;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/u16;

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Lcom/shabakaty/downloader/u16;->a:I

    return p0

    .line 4
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/p31;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Lcom/shabakaty/downloader/ma1;)Lcom/shabakaty/downloader/u16;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/u16;

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/ma1;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/u16;

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/p31;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/v26;->f(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/v26;

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->e(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/v26;

    return-object p0
.end method

.method public final bridge synthetic c(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/m43;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->g(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/v26;

    return-object p0
.end method

.method public final d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;
    .locals 4

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->k(Lcom/shabakaty/downloader/ma1;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/v26;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p2, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 10
    check-cast p2, Ljava/util/Collection;

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/v26;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    goto :goto_0

    :cond_3
    return-object p0

    .line 13
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 14
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/shabakaty/downloader/v26;->h:Lcom/shabakaty/downloader/l43;

    .line 16
    invoke-virtual {p0, v1, p1, v0}, Lcom/shabakaty/downloader/v26;->i(Lcom/shabakaty/downloader/l43;Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;

    goto :goto_1

    :cond_5
    return-object p0

    .line 17
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-nez p2, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->k(Lcom/shabakaty/downloader/ma1;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    const/16 p2, 0x8

    .line 21
    invoke-static {p2}, Lcom/shabakaty/downloader/v26;->j(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-object p0

    .line 22
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->k(Lcom/shabakaty/downloader/ma1;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 25
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    const/4 v0, 0x4

    .line 26
    invoke-static {v0}, Lcom/shabakaty/downloader/v26;->j(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-object p0

    .line 27
    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 28
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/v26;->f(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/v26;

    return-object p0

    .line 29
    :cond_b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->g(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/v26;

    return-object p0

    .line 31
    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    .line 32
    check-cast p2, [B

    array-length v0, p2

    if-nez v0, :cond_d

    return-object p0

    .line 33
    :cond_d
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->k(Lcom/shabakaty/downloader/ma1;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->b:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/l43;

    if-eqz v0, :cond_f

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Lcom/shabakaty/downloader/v26;->i(Lcom/shabakaty/downloader/l43;Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;

    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/nz4;

    if-eqz v0, :cond_10

    .line 40
    new-instance v1, Lcom/shabakaty/downloader/m36;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/shabakaty/downloader/m36;-><init>(Lcom/shabakaty/downloader/ma1;Lcom/shabakaty/downloader/m43;I)V

    invoke-interface {v0, p2, v1}, Lcom/shabakaty/downloader/l31;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 41
    :cond_10
    instance-of v0, p2, Lcom/shabakaty/downloader/g26;

    if-eqz v0, :cond_11

    .line 42
    check-cast p2, Lcom/shabakaty/downloader/g26;

    invoke-interface {p2}, Lcom/shabakaty/downloader/g26;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->e(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/v26;

    return-object p0

    .line 43
    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 44
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->e(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/v26;

    return-object p0

    :cond_12
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->d:Lcom/shabakaty/downloader/l43;

    .line 45
    invoke-virtual {p0, v0, p1, p2}, Lcom/shabakaty/downloader/v26;->i(Lcom/shabakaty/downloader/l43;Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;

    return-object p0
.end method

.method public final e(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/v26;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->l(Lcom/shabakaty/downloader/ma1;)Lcom/shabakaty/downloader/u16;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/u16;->b:Lcom/shabakaty/downloader/k26;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    const/4 v0, 0x4

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/v26;->j(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    add-int p1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/v26;->m(I)V

    :goto_0
    return-object p0
.end method

.method public final f(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/v26;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/v26;->l(Lcom/shabakaty/downloader/ma1;)Lcom/shabakaty/downloader/u16;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/u16;->b:Lcom/shabakaty/downloader/k26;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    const/16 v0, 0x8

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/v26;->j(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    add-long v0, p2, p2

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->n(J)V

    goto :goto_0

    .line 10
    :cond_3
    iget p1, p1, Lcom/shabakaty/downloader/u16;->a:I

    shl-int/lit8 p1, p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v26;->m(I)V

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/v26;->n(J)V

    :goto_0
    return-object p0
.end method

.method public final g(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/v26;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/v26;->e(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/v26;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/l43;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p0}, Lcom/shabakaty/downloader/l31;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/p31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No encoder for "

    invoke-static {v2, v1, p1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Lcom/shabakaty/downloader/l43;Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/v26;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l43<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ma1;",
            "TT;)",
            "Lcom/shabakaty/downloader/v26;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qf7;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qf7;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-interface {p1, p3, p0}, Lcom/shabakaty/downloader/l31;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qf7;->a()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/v26;->k(Lcom/shabakaty/downloader/ma1;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 6
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/v26;->m(I)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/v26;->n(J)V

    .line 8
    invoke-interface {p1, p3, p0}, Lcom/shabakaty/downloader/l31;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    iput-object v1, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    .line 10
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/q16;->a:Lcom/shabakaty/downloader/xk5;

    .line 13
    invoke-virtual {p3, p1, p2}, Lcom/shabakaty/downloader/xk5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    throw p1
.end method

.method public final m(I)V
    .locals 5

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final n(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v26;->a:Ljava/io/OutputStream;

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
