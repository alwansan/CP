.class public final Lcom/shabakaty/downloader/kb6;
.super Lcom/shabakaty/downloader/uu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/r07;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uu6<",
        "Lcom/shabakaty/downloader/kb6;",
        "Lcom/shabakaty/downloader/fb6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/shabakaty/downloader/kb6;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/vb6;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/za6;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/u66;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/ri6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/kb6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/kb6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    const-class v1, Lcom/shabakaty/downloader/kb6;

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uu6;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uu6;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzg:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/h17;->u:Lcom/shabakaty/downloader/h17;

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/kb6;->zzi:Lcom/shabakaty/downloader/cw6;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/kb6;->zzk:Lcom/shabakaty/downloader/cw6;

    iput-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzl:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/kb6;->zzn:Lcom/shabakaty/downloader/cw6;

    return-void
.end method

.method public static synthetic D(Lcom/shabakaty/downloader/kb6;ILcom/shabakaty/downloader/za6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static E(Lcom/shabakaty/downloader/kb6;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/h17;->u:Lcom/shabakaty/downloader/h17;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzk:Lcom/shabakaty/downloader/cw6;

    return-void
.end method

.method public static w()Lcom/shabakaty/downloader/fb6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uu6;->n()Lcom/shabakaty/downloader/lu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fb6;

    return-object v0
.end method

.method public static synthetic x()Lcom/shabakaty/downloader/kb6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    return-object v0
.end method

.method public static y()Lcom/shabakaty/downloader/kb6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/u66;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzk:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ri6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzn:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vb6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzi:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/kb6;->zzm:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/kb6;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/kb6;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

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

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/fb6;

    .line 3
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/fb6;-><init>(Lcom/shabakaty/downloader/ol3;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/kb6;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/kb6;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    .line 6
    const-class p2, Lcom/shabakaty/downloader/vb6;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/shabakaty/downloader/za6;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/shabakaty/downloader/u66;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lcom/shabakaty/downloader/ri6;

    aput-object p3, p1, p2

    sget-object p2, Lcom/shabakaty/downloader/kb6;->zza:Lcom/shabakaty/downloader/kb6;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/j17;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b"

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

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzn:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/shabakaty/downloader/kb6;->zzf:J

    return-wide v0
.end method

.method public final v(I)Lcom/shabakaty/downloader/za6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzj:Lcom/shabakaty/downloader/cw6;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/za6;

    return-object p1
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/kb6;->zzg:Ljava/lang/String;

    return-object v0
.end method
