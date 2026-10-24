.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "TransportRegistrar.java"

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

.method public static synthetic a(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/pq4;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/pq4;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/pq4;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/kp;->f:Lcom/shabakaty/downloader/kp;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yq4;->c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shabakaty/downloader/pq4;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/eq0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v1, Lcom/shabakaty/downloader/xq4;->a:Lcom/shabakaty/downloader/xq4;

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
