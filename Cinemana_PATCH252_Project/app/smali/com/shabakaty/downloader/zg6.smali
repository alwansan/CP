.class public final Lcom/shabakaty/downloader/zg6;
.super Lcom/shabakaty/downloader/uu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/r07;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uu6<",
        "Lcom/shabakaty/downloader/zg6;",
        "Lcom/shabakaty/downloader/wg6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/shabakaty/downloader/zg6;


# instance fields
.field private zze:Lcom/shabakaty/downloader/zv6;

.field private zzf:Lcom/shabakaty/downloader/zv6;

.field private zzg:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/kd6;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/ih6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/zg6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/zg6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    const-class v1, Lcom/shabakaty/downloader/zg6;

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uu6;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uu6;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/bz6;->u:Lcom/shabakaty/downloader/bz6;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/h17;->u:Lcom/shabakaty/downloader/h17;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    return-void
.end method

.method public static F(Lcom/shabakaty/downloader/zg6;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/yp6;

    .line 2
    iget-boolean v1, v1, Lcom/shabakaty/downloader/yp6;->r:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->q(Lcom/shabakaty/downloader/zv6;)Lcom/shabakaty/downloader/zv6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    .line 4
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/xp6;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static G(Lcom/shabakaty/downloader/zg6;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bz6;->u:Lcom/shabakaty/downloader/bz6;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    return-void
.end method

.method public static H(Lcom/shabakaty/downloader/zg6;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/yp6;

    .line 2
    iget-boolean v1, v1, Lcom/shabakaty/downloader/yp6;->r:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->q(Lcom/shabakaty/downloader/zv6;)Lcom/shabakaty/downloader/zv6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    .line 4
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/xp6;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static I(Lcom/shabakaty/downloader/zg6;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bz6;->u:Lcom/shabakaty/downloader/bz6;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    return-void
.end method

.method public static J(Lcom/shabakaty/downloader/zg6;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 5
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/xp6;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static K(Lcom/shabakaty/downloader/zg6;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static L(Lcom/shabakaty/downloader/zg6;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 5
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/xp6;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static M(Lcom/shabakaty/downloader/zg6;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static x()Lcom/shabakaty/downloader/wg6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uu6;->n()Lcom/shabakaty/downloader/lu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wg6;

    return-object v0
.end method

.method public static synthetic y()Lcom/shabakaty/downloader/zg6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    return-object v0
.end method

.method public static z()Lcom/shabakaty/downloader/zg6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    return-object v0
.end method


# virtual methods
.method public final A(I)Lcom/shabakaty/downloader/ih6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ih6;

    return-object p1
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kd6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ih6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    return-object v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/wg6;

    .line 3
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/wg6;-><init>(Lcom/shabakaty/downloader/fl3;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/zg6;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/zg6;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Lcom/shabakaty/downloader/kd6;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-class p2, Lcom/shabakaty/downloader/ih6;

    aput-object p2, p1, p3

    sget-object p2, Lcom/shabakaty/downloader/zg6;->zza:Lcom/shabakaty/downloader/zg6;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/j17;

    const-string v0, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lcom/shabakaty/downloader/j17;-><init>(Lcom/shabakaty/downloader/q07;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzf:Lcom/shabakaty/downloader/zv6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/bz6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bz6;->size()I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzh:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zze:Lcom/shabakaty/downloader/zv6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/bz6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bz6;->size()I

    move-result v0

    return v0
.end method

.method public final w(I)Lcom/shabakaty/downloader/kd6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/zg6;->zzg:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kd6;

    return-object p1
.end method
