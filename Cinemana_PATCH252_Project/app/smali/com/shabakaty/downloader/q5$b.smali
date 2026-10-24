.class public interface abstract Lcom/shabakaty/downloader/q5$b;
.super Ljava/lang/Object;
.source "AnalyticsApiManagerPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001JR\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t0\u00082\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\'\u00a8\u0006\u000c"
    }
    d2 = {
        "com/shabakaty/downloader/q5$b",
        "",
        "",
        "deviceType",
        "userID",
        "identifier",
        "platformType",
        "analytics",
        "Lcom/shabakaty/downloader/f74;",
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/downloader/ys3;",
        "a",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "deviceType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "userID"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "identifier"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "platform_type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "analytics"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/api/info/ShabakatyInfo"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/downloader/ys3;",
            ">;>;"
        }
    .end annotation
.end method
