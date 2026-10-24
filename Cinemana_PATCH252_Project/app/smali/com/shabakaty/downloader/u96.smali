.class public final Lcom/shabakaty/downloader/u96;
.super Lcom/shabakaty/downloader/uu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/r07;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uu6<",
        "Lcom/shabakaty/downloader/u96;",
        "Lcom/shabakaty/downloader/c96;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/shabakaty/downloader/u96;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/u96;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/u96;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u96;->zza:Lcom/shabakaty/downloader/u96;

    const-class v1, Lcom/shabakaty/downloader/u96;

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uu6;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uu6;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/downloader/u96;->zzg:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/h17;->u:Lcom/shabakaty/downloader/h17;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/u96;->zzi:Lcom/shabakaty/downloader/cw6;

    return-void
.end method

.method public static synthetic t()Lcom/shabakaty/downloader/u96;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/u96;->zza:Lcom/shabakaty/downloader/u96;

    return-object v0
.end method

.method public static u()Lcom/shabakaty/downloader/u96;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/u96;->zza:Lcom/shabakaty/downloader/u96;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/u96;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/u96;->zzf:I

    invoke-static {v0}, Lcom/shabakaty/downloader/p96;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/u96;->zza:Lcom/shabakaty/downloader/u96;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/c96;

    .line 3
    invoke-direct {p1}, Lcom/shabakaty/downloader/c96;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/u96;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/u96;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/o96;->a:Lcom/shabakaty/downloader/sv6;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/shabakaty/downloader/u96;->zza:Lcom/shabakaty/downloader/u96;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/j17;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

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

    iget-object v0, p0, Lcom/shabakaty/downloader/u96;->zzi:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/u96;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/u96;->zzi:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/u96;->zzh:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/u96;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/u96;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
