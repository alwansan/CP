.class public final synthetic Lcom/shabakaty/downloader/ci5;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# static fields
.field public static final a:Lcom/shabakaty/downloader/l43;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ci5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ci5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ci5;->a:Lcom/shabakaty/downloader/l43;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ki5;->f:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/ki5;->g:Lcom/shabakaty/downloader/ma1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
