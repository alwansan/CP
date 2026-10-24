.class public abstract Lcom/shabakaty/downloader/v40;
.super Lcom/shabakaty/downloader/kz6;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v40$b;,
        Lcom/shabakaty/downloader/v40$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lcom/shabakaty/downloader/x40;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/v40;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/v40;->b:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, Lcom/shabakaty/downloader/hw4;->g:Z

    .line 3
    sput-boolean v0, Lcom/shabakaty/downloader/v40;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/kz6;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/v40$a;)V
    .locals 0

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/kz6;-><init>(I)V

    return-void
.end method

.method public static A(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/v40;->B(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static B(J)I
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

.method public static C(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static D(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(ILcom/shabakaty/downloader/dp;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dp;->size()I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lcom/shabakaty/downloader/dp;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dp;->size()I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->o(I)I

    move-result p0

    return p0
.end method

.method public static e(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->l(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static h(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static i(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static j(ILcom/shabakaty/downloader/ds2;Lcom/shabakaty/downloader/ey3;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/i0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/i0;->o(Lcom/shabakaty/downloader/ey3;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->l(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static l(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->z(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static m(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/v40;->B(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static n(Lcom/shabakaty/downloader/qf2;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qf2;->b:Lcom/shabakaty/downloader/dp;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/qf2;->b:Lcom/shabakaty/downloader/dp;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/dp;->size()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qf2;->a:Lcom/shabakaty/downloader/ds2;

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/qf2;->a:Lcom/shabakaty/downloader/ds2;

    invoke-interface {p0}, Lcom/shabakaty/downloader/ds2;->e()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->o(I)I

    move-result p0

    return p0
.end method

.method public static o(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static p(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static q(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static r(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->s(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static s(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->C(I)I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->z(I)I

    move-result p0

    return p0
.end method

.method public static t(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/v40;->u(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static u(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/v40;->D(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/v40;->B(J)I

    move-result p0

    return p0
.end method

.method public static v(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->w(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/my4;->c(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/shabakaty/downloader/my4$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/shabakaty/downloader/x22;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->o(I)I

    move-result p0

    return p0
.end method

.method public static x(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->z(I)I

    move-result p0

    return p0
.end method

.method public static y(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/v40;->x(I)I

    move-result p0

    invoke-static {p1}, Lcom/shabakaty/downloader/v40;->z(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static z(I)I
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


# virtual methods
.method public abstract E(B)V
.end method

.method public abstract F(IZ)V
.end method

.method public abstract G([BII)V
.end method

.method public abstract H(ILcom/shabakaty/downloader/dp;)V
.end method

.method public abstract I(Lcom/shabakaty/downloader/dp;)V
.end method

.method public abstract J(II)V
.end method

.method public abstract K(I)V
.end method

.method public abstract L(IJ)V
.end method

.method public abstract M(J)V
.end method

.method public abstract N(II)V
.end method

.method public abstract O(I)V
.end method

.method public abstract P(ILcom/shabakaty/downloader/ds2;Lcom/shabakaty/downloader/ey3;)V
.end method

.method public abstract Q(Lcom/shabakaty/downloader/ds2;)V
.end method

.method public abstract R(ILcom/shabakaty/downloader/ds2;)V
.end method

.method public abstract S(ILcom/shabakaty/downloader/dp;)V
.end method

.method public abstract T(ILjava/lang/String;)V
.end method

.method public abstract U(Ljava/lang/String;)V
.end method

.method public abstract V(II)V
.end method

.method public abstract W(II)V
.end method

.method public abstract X(I)V
.end method

.method public abstract Y(IJ)V
.end method

.method public abstract Z(J)V
.end method
