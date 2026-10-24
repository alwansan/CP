.class public abstract Lcom/shabakaty/downloader/e17;
.super Lcom/shabakaty/downloader/kz6;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e17$a;,
        Lcom/shabakaty/downloader/e17$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lcom/shabakaty/downloader/l17;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/e17;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/e17;->b:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, Lcom/shabakaty/downloader/da7;->f:Z

    .line 3
    sput-boolean v0, Lcom/shabakaty/downloader/e17;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/kz6;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/n76;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/kz6;-><init>(I)V

    return-void
.end method

.method public static B(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/e17;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static C(ILjava/lang/String;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->l(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static D(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/e17;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static E(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/e17;->V(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/e17;->T(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static F(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static H(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static L(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->m(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static M(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static O(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->t(I)I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static P(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static R(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static S(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->m(I)I

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

.method public static U(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/e17;->V(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/e17;->T(J)I

    move-result p0

    return p0
.end method

.method public static V(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(Lcom/shabakaty/downloader/d77;Lcom/shabakaty/downloader/n87;)I
    .locals 2

    .line 1
    check-cast p0, Lcom/shabakaty/downloader/yy6;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yy6;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/n87;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yy6;->d(I)V

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static k(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/ta7;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/shabakaty/downloader/bb7; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/shabakaty/downloader/n37;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static m(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static n(I)I
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

.method public static o(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->t(I)I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    return p0
.end method

.method public static p(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static q(Lcom/shabakaty/downloader/i07;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i07;->size()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static t(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static u(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static v(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static w(ILcom/shabakaty/downloader/i07;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i07;->size()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static x(ILcom/shabakaty/downloader/d77;Lcom/shabakaty/downloader/n87;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/e17;->n(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/yy6;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yy6;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/n87;->d(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yy6;->d(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract A(ILjava/lang/String;)V
.end method

.method public abstract G(II)V
.end method

.method public abstract I(II)V
.end method

.method public abstract J()I
.end method

.method public abstract K(II)V
.end method

.method public abstract N(J)V
.end method

.method public abstract Q(J)V
.end method

.method public abstract b(II)V
.end method

.method public abstract d(IJ)V
.end method

.method public abstract e(ILcom/shabakaty/downloader/i07;)V
.end method

.method public abstract f(ILcom/shabakaty/downloader/d77;)V
.end method

.method public abstract g(ILcom/shabakaty/downloader/d77;Lcom/shabakaty/downloader/n87;)V
.end method

.method public abstract h(I)V
.end method

.method public abstract i(I)V
.end method

.method public abstract j(I)V
.end method

.method public abstract r(ILcom/shabakaty/downloader/i07;)V
.end method

.method public abstract s(IZ)V
.end method

.method public abstract y(B)V
.end method

.method public abstract z(IJ)V
.end method
