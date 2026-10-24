.class public Lcom/shabakaty/downloader/fq3;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/bo1;)Lcom/shabakaty/downloader/sc2;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a30;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/a30;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/nc2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s93;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/s93;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/zv2;)Lcom/shabakaty/downloader/xc2;
    .locals 0

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;
    .locals 0

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/af2;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fq3;->f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
