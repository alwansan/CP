.class public final Lcom/shabakaty/downloader/ky1;
.super Ljava/lang/Object;
.source "ImageAnalysisConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx4;
.implements Lcom/shabakaty/downloader/dz1;
.implements Lcom/shabakaty/downloader/xm4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/hx4<",
        "Lcom/shabakaty/downloader/fy1;",
        ">;",
        "Lcom/shabakaty/downloader/dz1;",
        "Lcom/shabakaty/downloader/xm4;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/hz1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/k83;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/shabakaty/downloader/fy1$b;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageAnalysis.backpressureStrategy"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/ky1;->s:Lcom/shabakaty/downloader/o90$a;

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageAnalysis.imageQueueDepth"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/ky1;->t:Lcom/shabakaty/downloader/o90$a;

    .line 7
    const-class v0, Lcom/shabakaty/downloader/hz1;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageAnalysis.imageReaderProxyProvider"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/ky1;->u:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/k83;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ky1;->r:Lcom/shabakaty/downloader/k83;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->g(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/in3;->e(Lcom/shabakaty/downloader/jn3;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->c(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/shabakaty/downloader/o90$a;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->a(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->f(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cz1;->b(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cz1;->c(Lcom/shabakaty/downloader/dz1;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/o90;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ky1;->r:Lcom/shabakaty/downloader/k83;

    return-object v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public synthetic j(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cz1;->a(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jx4;->a(Lcom/shabakaty/downloader/kx4;Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cz1;->e(Lcom/shabakaty/downloader/dz1;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pk4;->a(Lcom/shabakaty/downloader/qk4;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->h(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o()Z
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/cz1;->g(Lcom/shabakaty/downloader/dz1;)Z

    move-result v0

    return v0
.end method

.method public synthetic p(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->d(Lcom/shabakaty/downloader/hx4;I)I

    move-result p1

    return p1
.end method

.method public synthetic q()I
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/cz1;->d(Lcom/shabakaty/downloader/dz1;)I

    move-result v0

    return v0
.end method

.method public synthetic r(Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->c(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic s(Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->b(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;

    move-result-object p1

    return-object p1
.end method

.method public synthetic t(Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->b(Lcom/shabakaty/downloader/jn3;Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V

    return-void
.end method

.method public synthetic u(Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->d(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic v(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cz1;->f(Lcom/shabakaty/downloader/dz1;I)I

    move-result p1

    return p1
.end method

.method public synthetic w(Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gx4;->a(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;

    move-result-object p1

    return-object p1
.end method
