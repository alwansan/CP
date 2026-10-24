.class public Lcom/shabakaty/downloader/dq3;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fq3;

.field public static final b:[Lcom/shabakaty/downloader/gc2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcom/shabakaty/downloader/gq3;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fq3;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fq3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fq3;-><init>()V

    :goto_1
    sput-object v0, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shabakaty/downloader/gc2;

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/dq3;->b:[Lcom/shabakaty/downloader/gc2;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fq3;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/zv2;)Lcom/shabakaty/downloader/xc2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fq3;->d(Lcom/shabakaty/downloader/zv2;)Lcom/shabakaty/downloader/xc2;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fq3;->e(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fq3;->f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
