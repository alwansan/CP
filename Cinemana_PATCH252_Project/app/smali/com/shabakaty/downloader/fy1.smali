.class public final Lcom/shabakaty/downloader/fy1;
.super Lcom/shabakaty/downloader/cx4;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fy1$c;,
        Lcom/shabakaty/downloader/fy1$d;,
        Lcom/shabakaty/downloader/fy1$a;,
        Lcom/shabakaty/downloader/fy1$b;
    }
.end annotation


# static fields
.field public static final p:Lcom/shabakaty/downloader/fy1$d;


# instance fields
.field public final l:Lcom/shabakaty/downloader/iy1;

.field public final m:Ljava/lang/Object;

.field public n:Lcom/shabakaty/downloader/fy1$a;

.field public o:Lcom/shabakaty/downloader/hp0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fy1$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fy1$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/fy1;->p:Lcom/shabakaty/downloader/fy1$d;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ky1;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cx4;-><init>(Lcom/shabakaty/downloader/hx4;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fy1;->m:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/ky1;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/ky1;->s:Lcom/shabakaty/downloader/o90$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/jy1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/jy1;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ly1;

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/xm4;->j:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v2, v1}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ly1;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    :goto_0
    return-void
.end method


# virtual methods
.method public c(ZLcom/shabakaty/downloader/ix4;)Lcom/shabakaty/downloader/hx4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/ix4;",
            ")",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ix4$a;->t:Lcom/shabakaty/downloader/ix4$a;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ix4;->a(Lcom/shabakaty/downloader/ix4$a;)Lcom/shabakaty/downloader/o90;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/fy1;->p:Lcom/shabakaty/downloader/fy1$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/fy1$d;->a:Lcom/shabakaty/downloader/ky1;

    .line 4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/n90;->a(Lcom/shabakaty/downloader/o90;Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/o90;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/fy1;->f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/fy1$c;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fy1$c;->e()Lcom/shabakaty/downloader/ky1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/o90;",
            ")",
            "Lcom/shabakaty/downloader/hx4$a<",
            "***>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fy1$c;

    invoke-static {p1}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fy1$c;-><init>(Lcom/shabakaty/downloader/yv2;)V

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/iy1;->e:Z

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hp0;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/iy1;->e:Z

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/iy1;->d()V

    return-void
.end method

.method public o(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/ky1;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/fy1;->q(Ljava/lang/String;Lcom/shabakaty/downloader/ky1;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    return-object p1
.end method

.method public q(Ljava/lang/String;Lcom/shabakaty/downloader/ky1;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;
    .locals 10

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/xm4;->j:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p2, v1, v0}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/ky1;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/ky1;->s:Lcom/shabakaty/downloader/o90$a;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 9
    check-cast v1, Lcom/shabakaty/downloader/ky1;

    const/4 v2, 0x6

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/ky1;->t:Lcom/shabakaty/downloader/o90$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 11
    :goto_0
    sget-object v1, Lcom/shabakaty/downloader/ky1;->u:Lcom/shabakaty/downloader/o90$a;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/hz1;

    if-eqz v3, :cond_1

    .line 12
    new-instance v9, Lcom/shabakaty/downloader/nw3;

    .line 13
    invoke-interface {p2, v1, v2}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/hz1;

    .line 14
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->d()I

    move-result v5

    const-wide/16 v7, 0x0

    .line 15
    invoke-interface/range {v2 .. v8}, Lcom/shabakaty/downloader/hz1;->a(IIIIJ)Lcom/shabakaty/downloader/gz1;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/shabakaty/downloader/nw3;-><init>(Lcom/shabakaty/downloader/gz1;)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/nw3;

    .line 17
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 18
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->d()I

    move-result v3

    .line 20
    invoke-static {v1, v2, v3, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/d7;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/d7;-><init>(Landroid/media/ImageReader;)V

    .line 22
    invoke-direct {v9, v2}, Lcom/shabakaty/downloader/nw3;-><init>(Lcom/shabakaty/downloader/gz1;)V

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fy1;->r()V

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    invoke-virtual {v9, v1, v0}, Lcom/shabakaty/downloader/nw3;->e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V

    .line 25
    invoke-static {p2}, Lcom/shabakaty/downloader/u14$b;->f(Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hp0;->a()V

    .line 28
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/wz1;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/nw3;->a()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/wz1;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    .line 29
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hp0;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/rr;

    invoke-direct {v2, v9}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/nw3;)V

    .line 30
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 31
    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/fy1;->o:Lcom/shabakaty/downloader/hp0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/u14$b;->d(Lcom/shabakaty/downloader/hp0;)V

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/ey1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shabakaty/downloader/ey1;-><init>(Lcom/shabakaty/downloader/fy1;Ljava/lang/String;Lcom/shabakaty/downloader/ky1;Landroid/util/Size;)V

    .line 34
    iget-object p1, v0, Lcom/shabakaty/downloader/u14$a;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    check-cast v2, Lcom/shabakaty/downloader/dz1;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/dz1;->v(I)I

    move-result v2

    .line 5
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/st;->e(I)I

    move-result v0

    .line 6
    iput v0, v1, Lcom/shabakaty/downloader/iy1;->b:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ImageAnalysis:"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
