.class public abstract Lcom/shabakaty/downloader/zp5;
.super Lcom/shabakaty/downloader/cl4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zp5$e;,
        Lcom/shabakaty/downloader/zp5$d;,
        Lcom/shabakaty/downloader/zp5$b;,
        Lcom/shabakaty/downloader/zp5$a;,
        Lcom/shabakaty/downloader/zp5$c;
    }
.end annotation


# static fields
.field public static final t:Ljava/util/logging/Logger;

.field public static final u:Z


# instance fields
.field public s:Lcom/shabakaty/downloader/mq5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/zp5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/zp5;->t:Ljava/util/logging/Logger;

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/ob6;->f:Z

    .line 2
    sput-boolean v0, Lcom/shabakaty/downloader/zp5;->u:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cl4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/cl3;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cl4;-><init>(I)V

    return-void
.end method

.method public static F(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static G(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static H(ILcom/shabakaty/downloader/hn5;)I
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static I(ILcom/shabakaty/downloader/y26;)I
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/y26;->s()I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static K(ILcom/shabakaty/downloader/y26;Lcom/shabakaty/downloader/o66;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/shabakaty/downloader/wj5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/wj5;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/o66;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wj5;->c(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static L(Lcom/shabakaty/downloader/y26;)I
    .locals 1

    invoke-interface {p0}, Lcom/shabakaty/downloader/y26;->s()I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static O(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/zp5;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static R(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/zp5;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static S(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/zp5;->d0(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/zp5;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static T(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static V(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static W(II)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->k0(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static X(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/zp5;->d0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/zp5;->T(J)I

    move-result p0

    return p0
.end method

.method public static Y(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static Z(II)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a0(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zb6;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/shabakaty/downloader/oc6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/shabakaty/downloader/vv5;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b0(II)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->n0(I)I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c0(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static d0(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static e0(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static f0(II)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->k0(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static j0(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p0

    return p0
.end method

.method public static k0(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static l0(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static m0(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->n0(I)I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p0

    return p0
.end method

.method public static n0(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static w(I)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static x(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->j0(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/zp5;->a0(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static y(Lcom/shabakaty/downloader/hn5;)I
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static z(Lcom/shabakaty/downloader/y26;Lcom/shabakaty/downloader/o66;)I
    .locals 2

    check-cast p0, Lcom/shabakaty/downloader/wj5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wj5;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o66;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wj5;->c(I)V

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/zp5;->l0(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract A(II)V
.end method

.method public abstract B(ILcom/shabakaty/downloader/hn5;)V
.end method

.method public abstract C(ILcom/shabakaty/downloader/y26;)V
.end method

.method public abstract D(IZ)V
.end method

.method public abstract E(J)V
.end method

.method public abstract M(II)V
.end method

.method public abstract N(IJ)V
.end method

.method public abstract P(II)V
.end method

.method public abstract Q(J)V
.end method

.method public abstract U(II)V
.end method

.method public abstract g0(I)V
.end method

.method public abstract h0(I)V
.end method

.method public abstract i0(I)V
.end method

.method public abstract m()V
.end method

.method public abstract n([BII)V
.end method

.method public abstract o(B)V
.end method

.method public abstract p(IJ)V
.end method

.method public abstract q(ILcom/shabakaty/downloader/hn5;)V
.end method

.method public abstract r(ILcom/shabakaty/downloader/y26;)V
.end method

.method public abstract s(ILcom/shabakaty/downloader/y26;Lcom/shabakaty/downloader/o66;)V
.end method

.method public abstract t(ILjava/lang/String;)V
.end method

.method public final u(Ljava/lang/String;Lcom/shabakaty/downloader/oc6;)V
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/zp5;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/shabakaty/downloader/vv5;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zp5;->h0(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/cl4;->l([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shabakaty/downloader/zp5$c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/shabakaty/downloader/zp5$c;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/zp5$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract v()I
.end method
