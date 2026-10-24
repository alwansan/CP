.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic lambda$getComponents$0$FirebaseMessagingRegistrar(Lcom/shabakaty/downloader/q80;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/ec1;

    const-class v0, Lcom/shabakaty/downloader/pc1;

    .line 3
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/pc1;

    const-class v0, Lcom/shabakaty/downloader/qx4;

    .line 4
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object v3

    const-class v0, Lcom/shabakaty/downloader/xs1;

    .line 5
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object v4

    const-class v0, Lcom/shabakaty/downloader/mc1;

    .line 6
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/mc1;

    const-class v0, Lcom/shabakaty/downloader/pq4;

    .line 7
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/pq4;

    const-class v0, Lcom/shabakaty/downloader/ff4;

    .line 8
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/shabakaty/downloader/ff4;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/pc1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/pq4;Lcom/shabakaty/downloader/ff4;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 1
    invoke-static {v1}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/ec1;

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/pc1;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/qx4;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/xs1;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 9
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/pq4;

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v5, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 11
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/mc1;

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/ff4;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 15
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v2, Lcom/shabakaty/downloader/sc1;->a:Lcom/shabakaty/downloader/t80;

    .line 16
    iput-object v2, v1, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 17
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/o80$b;->d(I)Lcom/shabakaty/downloader/o80$b;

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fcm"

    const-string v2, "22.0.0"

    .line 19
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/gh2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v4

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
