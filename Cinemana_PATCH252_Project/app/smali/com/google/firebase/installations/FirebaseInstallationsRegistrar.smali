.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInstallationsRegistrar.java"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/mc1;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/mc1;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/mc1;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lc1;

    const-class v1, Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ec1;

    const-class v2, Lcom/shabakaty/downloader/qx4;

    .line 3
    invoke-interface {p0, v2}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object v2

    const-class v3, Lcom/shabakaty/downloader/xs1;

    .line 4
    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/shabakaty/downloader/lc1;-><init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/o80;

    .line 1
    const-class v1, Lcom/shabakaty/downloader/mc1;

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/ec1;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/xs1;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/qx4;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v2, Lcom/shabakaty/downloader/oc1;->a:Lcom/shabakaty/downloader/oc1;

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-installations"

    const-string v2, "17.0.0"

    .line 11
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/gh2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v4

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
