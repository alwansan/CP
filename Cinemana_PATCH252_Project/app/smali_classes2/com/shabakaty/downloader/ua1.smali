.class public final Lcom/shabakaty/downloader/ua1;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ua1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/shabakaty/downloader/ua1$a<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/ua1;


# instance fields
.field public final a:Lcom/shabakaty/downloader/c94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/c94<",
            "TFieldDescriptorType;",
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

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ua1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ua1;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/downloader/ua1;->d:Lcom/shabakaty/downloader/ua1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ua1;->c:Z

    .line 3
    sget v0, Lcom/shabakaty/downloader/c94;->w:I

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/a94;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a94;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ua1;->c:Z

    .line 8
    sget v0, Lcom/shabakaty/downloader/c94;->w:I

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/a94;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/a94;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/w40;->h(J)I

    move-result p0

    return p0

    .line 5
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p0

    return p0

    .line 7
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v2

    .line 8
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v1

    .line 9
    :pswitch_4
    instance-of p0, p1, Lcom/shabakaty/downloader/z22$a;

    if-eqz p0, :cond_0

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/z22$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z22$a;->d()I

    move-result p0

    .line 11
    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result p0

    return p0

    .line 12
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result p0

    return p0

    .line 14
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 15
    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p0

    return p0

    .line 16
    :pswitch_6
    instance-of p0, p1, Lcom/shabakaty/downloader/ep;

    if-eqz p0, :cond_1

    .line 17
    check-cast p1, Lcom/shabakaty/downloader/ep;

    invoke-static {p1}, Lcom/shabakaty/downloader/w40;->a(Lcom/shabakaty/downloader/ep;)I

    move-result p0

    return p0

    .line 18
    :cond_1
    check-cast p1, [B

    .line 19
    array-length p0, p1

    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p0

    array-length p1, p1

    add-int/2addr p0, p1

    return p0

    .line 20
    :pswitch_7
    instance-of p0, p1, Lcom/shabakaty/downloader/nf2;

    if-eqz p0, :cond_3

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/nf2;

    .line 22
    iget-boolean p0, p1, Lcom/shabakaty/downloader/pf2;->a:Z

    if-eqz p0, :cond_2

    .line 23
    iget-object p0, p1, Lcom/shabakaty/downloader/pf2;->b:Lcom/shabakaty/downloader/es2;

    invoke-interface {p0}, Lcom/shabakaty/downloader/es2;->e()I

    move-result p0

    .line 24
    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_2
    const/4 p0, 0x0

    .line 25
    throw p0

    .line 26
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/es2;

    invoke-static {p1}, Lcom/shabakaty/downloader/w40;->f(Lcom/shabakaty/downloader/es2;)I

    move-result p0

    return p0

    .line 27
    :pswitch_8
    check-cast p1, Lcom/shabakaty/downloader/es2;

    .line 28
    invoke-interface {p1}, Lcom/shabakaty/downloader/es2;->e()I

    move-result p0

    return p0

    .line 29
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    :try_start_0
    const-string p0, "UTF-8"

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 31
    array-length p1, p0

    invoke-static {p1}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p1

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 33
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return v0

    .line 34
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v1

    .line 35
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v2

    .line 36
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result p0

    return p0

    .line 37
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 38
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/w40;->h(J)I

    move-result p0

    return p0

    .line 39
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 40
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/w40;->h(J)I

    move-result p0

    return p0

    .line 41
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return v1

    .line 42
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static e(Lcom/shabakaty/downloader/ua1$a;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ua1$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/ua1$a;->g()Lcom/shabakaty/downloader/b75;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/ua1$a;->d()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/ua1$a;->p()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ua1;->d(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/shabakaty/downloader/w40;->g(I)I

    move-result p1

    :goto_1
    add-int/2addr p1, p0

    return p1

    .line 8
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v3

    .line 10
    sget-object v4, Lcom/shabakaty/downloader/b75;->C:Lcom/shabakaty/downloader/b75;

    if-ne v0, v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    .line 11
    :cond_2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ua1;->d(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    add-int/2addr v2, p1

    goto :goto_2

    :cond_3
    return v2

    .line 12
    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result p0

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/b75;->C:Lcom/shabakaty/downloader/b75;

    if-ne v0, v1, :cond_5

    mul-int/lit8 p0, p0, 0x2

    .line 14
    :cond_5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ua1;->d(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)I

    move-result p1

    goto :goto_1
.end method

.method public static g(Lcom/shabakaty/downloader/b75;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1
    :cond_0
    iget p0, p0, Lcom/shabakaty/downloader/b75;->s:I

    return p0
.end method

.method public static k(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/b75;Z)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->m()J

    move-result-wide p0

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->l()I

    move-result p0

    ushr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, v0

    neg-int p0, p0

    xor-int/2addr p0, p1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->k()J

    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->j()I

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->l()I

    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->f()Lcom/shabakaty/downloader/ep;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const-string p1, ""

    const-string v0, "UTF-8"

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->l()I

    move-result p2

    .line 18
    iget v1, p0, Lcom/shabakaty/downloader/u40;->e:I

    .line 19
    iget v2, p0, Lcom/shabakaty/downloader/u40;->c:I

    sub-int/2addr v2, v1

    if-gt p2, v2, :cond_0

    if-lez p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/u40;->a:[B

    add-int v2, v1, p2

    .line 21
    iput v2, p0, Lcom/shabakaty/downloader/u40;->e:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/u40;->i(I)[B

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    add-int p0, v1, p2

    .line 23
    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/z02;->q([BII)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, p0

    :goto_1
    return-object p1

    .line 25
    :cond_2
    new-instance p0, Lcom/shabakaty/downloader/s32;

    const-string p1, "Protocol message had invalid UTF-8."

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->l()I

    move-result p2

    .line 28
    iget v1, p0, Lcom/shabakaty/downloader/u40;->c:I

    iget v2, p0, Lcom/shabakaty/downloader/u40;->e:I

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_4

    if-lez p2, :cond_4

    .line 29
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/u40;->a:[B

    invoke-direct {p1, v1, v2, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/shabakaty/downloader/u40;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/shabakaty/downloader/u40;->e:I

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    goto :goto_2

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/u40;->i(I)[B

    move-result-object p0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_2
    return-object p1

    .line 32
    :pswitch_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->j()I

    move-result p0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->k()J

    move-result-wide p0

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_d
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->l()I

    move-result p0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->m()J

    move-result-wide p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_f
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->m()J

    move-result-wide p0

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u40;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static m(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/b75;->r:Lcom/shabakaty/downloader/d75;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    instance-of p0, p1, Lcom/shabakaty/downloader/es2;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/shabakaty/downloader/nf2;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/shabakaty/downloader/z22$a;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 6
    :pswitch_2
    instance-of p0, p1, Lcom/shabakaty/downloader/ep;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_1

    .line 7
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    .line 8
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 9
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    .line 10
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    .line 11
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    .line 12
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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

.method public static n(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b75;->C:Lcom/shabakaty/downloader/b75;

    if-ne p1, v0, :cond_0

    .line 2
    check-cast p3, Lcom/shabakaty/downloader/es2;

    shl-int/lit8 p1, p2, 0x3

    or-int/lit8 p2, p1, 0x3

    .line 3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 4
    invoke-interface {p3, p0}, Lcom/shabakaty/downloader/es2;->f(Lcom/shabakaty/downloader/w40;)V

    or-int/lit8 p1, p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ua1;->g(Lcom/shabakaty/downloader/b75;Z)I

    move-result v0

    shl-int/lit8 p2, p2, 0x3

    or-int/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 8
    invoke-static {p0, p1, p3}, Lcom/shabakaty/downloader/ua1;->o(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static o(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->z(J)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->x(J)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->w(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    instance-of p1, p2, Lcom/shabakaty/downloader/z22$a;

    if-eqz p1, :cond_0

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/z22$a;

    invoke-interface {p2}, Lcom/shabakaty/downloader/z22$a;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->o(I)V

    goto/16 :goto_0

    .line 12
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->o(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_6
    instance-of p1, p2, Lcom/shabakaty/downloader/ep;

    if-eqz p1, :cond_1

    .line 16
    check-cast p2, Lcom/shabakaty/downloader/ep;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->m(Lcom/shabakaty/downloader/ep;)V

    goto/16 :goto_0

    .line 17
    :cond_1
    check-cast p2, [B

    .line 18
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->v([B)V

    goto/16 :goto_0

    .line 20
    :pswitch_7
    check-cast p2, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->s(Lcom/shabakaty/downloader/es2;)V

    goto/16 :goto_0

    .line 21
    :pswitch_8
    check-cast p2, Lcom/shabakaty/downloader/es2;

    .line 22
    invoke-interface {p2, p0}, Lcom/shabakaty/downloader/es2;->f(Lcom/shabakaty/downloader/w40;)V

    goto :goto_0

    .line 23
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    const-string p1, "UTF-8"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 25
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->v([B)V

    goto :goto_0

    .line 27
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->t(I)V

    goto :goto_0

    .line 29
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->w(I)V

    goto :goto_0

    .line 31
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->x(J)V

    goto :goto_0

    .line 33
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->q(I)V

    goto :goto_0

    .line 34
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->z(J)V

    goto :goto_0

    .line 36
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->z(J)V

    goto :goto_0

    .line 38
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w40;->w(I)V

    goto :goto_0

    .line 40
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/w40;->x(J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.method public a(Lcom/shabakaty/downloader/ua1$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/pp1$e;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/pp1$e;->u:Z

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/pp1$e;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/pp1$e;->t:Lcom/shabakaty/downloader/b75;

    .line 5
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/ua1;->m(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ua1;->f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 10
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/shabakaty/downloader/ua1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ua1<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ua1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ua1;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/c94;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/c94;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ua1$a;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/ua1;->l(Lcom/shabakaty/downloader/ua1$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/c94;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ua1$a;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/ua1;->l(Lcom/shabakaty/downloader/ua1$a;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ua1;->c:Z

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ua1;->c:Z

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, [B

    .line 3
    array-length v0, p1

    new-array v0, v0, [B

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ua1;->b()Lcom/shabakaty/downloader/ua1;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/c94;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/nf2;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/nf2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final h(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ua1$a;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/ua1$a;->o()Lcom/shabakaty/downloader/d75;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/d75;->A:Lcom/shabakaty/downloader/d75;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/es2;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/fs2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/shabakaty/downloader/es2;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/es2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fs2;->a()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 9
    :cond_2
    instance-of p1, p1, Lcom/shabakaty/downloader/nf2;

    if-eqz p1, :cond_3

    return v3

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v3
.end method

.method public i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ua1;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    check-cast v0, Lcom/shabakaty/downloader/a94;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/c94;->u:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c94;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/c94;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ua1$a;

    invoke-interface {v3}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c94;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ua1$a;

    invoke-interface {v3}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 12
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_4
    iget-boolean v1, v0, Lcom/shabakaty/downloader/c94;->u:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/c94;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/c94;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/shabakaty/downloader/c94;->t:Ljava/util/Map;

    .line 15
    iput-boolean v2, v0, Lcom/shabakaty/downloader/c94;->u:Z

    .line 16
    :cond_6
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ua1;->b:Z

    return-void
.end method

.method public final j(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ua1$a;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/shabakaty/downloader/nf2;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/nf2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ua1;->f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ua1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/shabakaty/downloader/ua1$a;->o()Lcom/shabakaty/downloader/d75;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/d75;->A:Lcom/shabakaty/downloader/d75;

    if-ne v1, v2, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ua1;->f(Lcom/shabakaty/downloader/ua1$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ua1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_4
    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/es2;->c()Lcom/shabakaty/downloader/es2$a;

    move-result-object v1

    check-cast p1, Lcom/shabakaty/downloader/es2;

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ua1$a;->x(Lcom/shabakaty/downloader/es2$a;Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/es2$a;->build()Lcom/shabakaty/downloader/es2;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ua1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ua1$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ua1$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/ua1$a;->g()Lcom/shabakaty/downloader/b75;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ua1;->m(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ua1$a;->g()Lcom/shabakaty/downloader/b75;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/ua1;->m(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lcom/shabakaty/downloader/nf2;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ua1;->c:Z

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/c94;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
