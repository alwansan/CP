.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "CrashlyticsRegistrar.java"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/shabakaty/downloader/o80;

    .line 1
    const-class v2, Lcom/shabakaty/downloader/hc1;

    .line 2
    invoke-static {v2}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v2

    const-class v3, Lcom/shabakaty/downloader/ec1;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v3, Lcom/shabakaty/downloader/mc1;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v4, v3, v5, v6}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v3, Lcom/shabakaty/downloader/bg0;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v4, v3, v6, v0}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v3, Lcom/shabakaty/downloader/l6;

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v4, v3, v6, v0}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    new-instance v3, Lcom/shabakaty/downloader/n80;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/n80;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    .line 11
    iput-object v3, v2, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 12
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/o80$b;->d(I)Lcom/shabakaty/downloader/o80$b;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-cls"

    const-string v2, "18.2.1"

    .line 14
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/gh2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;

    move-result-object v0

    aput-object v0, v1, v5

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
