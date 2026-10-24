.class public final Lcom/shabakaty/downloader/ef6;
.super Lcom/shabakaty/downloader/uu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/r07;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uu6<",
        "Lcom/shabakaty/downloader/ef6;",
        "Lcom/shabakaty/downloader/ze6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/shabakaty/downloader/ef6;


# instance fields
.field private zze:Lcom/shabakaty/downloader/cw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cw6<",
            "Lcom/shabakaty/downloader/nf6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ef6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/ef6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ef6;->zza:Lcom/shabakaty/downloader/ef6;

    const-class v1, Lcom/shabakaty/downloader/ef6;

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uu6;->l(Ljava/lang/Class;Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uu6;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/h17;->u:Lcom/shabakaty/downloader/h17;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    return-void
.end method

.method public static s()Lcom/shabakaty/downloader/ze6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ef6;->zza:Lcom/shabakaty/downloader/ef6;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uu6;->n()Lcom/shabakaty/downloader/lu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ze6;

    return-object v0
.end method

.method public static synthetic t()Lcom/shabakaty/downloader/ef6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ef6;->zza:Lcom/shabakaty/downloader/ef6;

    return-object v0
.end method

.method public static synthetic w(Lcom/shabakaty/downloader/ef6;Lcom/shabakaty/downloader/nf6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/cw6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uu6;->j(Lcom/shabakaty/downloader/cw6;)Lcom/shabakaty/downloader/cw6;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ef6;->zza:Lcom/shabakaty/downloader/ef6;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/ze6;

    .line 3
    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/ze6;-><init>(Lcom/shabakaty/downloader/fl3;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/ef6;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/ef6;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    .line 6
    const-class p3, Lcom/shabakaty/downloader/nf6;

    aput-object p3, p1, p2

    sget-object p2, Lcom/shabakaty/downloader/ef6;->zza:Lcom/shabakaty/downloader/ef6;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/j17;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lcom/shabakaty/downloader/j17;-><init>(Lcom/shabakaty/downloader/q07;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lcom/shabakaty/downloader/nf6;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    const/4 v1, 0x0

    .line 1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/nf6;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nf6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/ef6;->zze:Lcom/shabakaty/downloader/cw6;

    return-object v0
.end method
