.class public final Lcom/shabakaty/downloader/q76;
.super Lcom/shabakaty/downloader/uu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/r07;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uu6<",
        "Lcom/shabakaty/downloader/q76;",
        "Lcom/shabakaty/downloader/j76;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/shabakaty/downloader/q76;


# instance fields
.field private zze:I

.field private zzf:Lcom/shabakaty/downloader/u96;

.field private zzg:Lcom/shabakaty/downloader/k86;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/q76;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/q76;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q76;->zza:Lcom/shabakaty/downloader/q76;

    const-class v1, Lcom/shabakaty/downloader/q76;

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uu6;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uu6;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/downloader/q76;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic s()Lcom/shabakaty/downloader/q76;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/q76;->zza:Lcom/shabakaty/downloader/q76;

    return-object v0
.end method

.method public static t()Lcom/shabakaty/downloader/q76;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/q76;->zza:Lcom/shabakaty/downloader/q76;

    return-object v0
.end method

.method public static synthetic x(Lcom/shabakaty/downloader/q76;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    iput-object p1, p0, Lcom/shabakaty/downloader/q76;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/shabakaty/downloader/q76;->zza:Lcom/shabakaty/downloader/q76;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/j76;

    .line 3
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/j76;-><init>(Lcom/shabakaty/downloader/fl3;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/q76;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/q76;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zze"

    aput-object v3, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/q76;->zza:Lcom/shabakaty/downloader/q76;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/j17;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lcom/shabakaty/downloader/j17;-><init>(Lcom/shabakaty/downloader/q07;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lcom/shabakaty/downloader/k86;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/q76;->zzg:Lcom/shabakaty/downloader/k86;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/k86;->t()Lcom/shabakaty/downloader/k86;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final v()Lcom/shabakaty/downloader/u96;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/q76;->zzf:Lcom/shabakaty/downloader/u96;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/u96;->u()Lcom/shabakaty/downloader/u96;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/q76;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/q76;->zzh:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/q76;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
