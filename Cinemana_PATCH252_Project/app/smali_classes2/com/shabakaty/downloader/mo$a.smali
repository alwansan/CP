.class public final synthetic Lcom/shabakaty/downloader/mo$a;
.super Lcom/shabakaty/downloader/bo1;
.source "BuiltInsLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mo;->a(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Ljava/lang/Iterable;Lcom/shabakaty/downloader/oc3;Lcom/shabakaty/downloader/o4;Z)Lcom/shabakaty/downloader/m93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/bo1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/bo1;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "loadResource"

    return-object v0
.end method

.method public final getOwner()Lcom/shabakaty/downloader/nc2;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/qo;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "loadResource(Ljava/lang/String;)Ljava/io/InputStream;"

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qo;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qo;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
