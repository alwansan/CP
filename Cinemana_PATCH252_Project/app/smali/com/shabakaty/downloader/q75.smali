.class public abstract Lcom/shabakaty/downloader/q75;
.super Ljava/lang/Object;
.source "WorkManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AddedAbstractMethod"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/shabakaty/downloader/t73;)Lcom/shabakaty/downloader/x73;
    .locals 6

    .line 1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/r75;

    .line 3
    new-instance p3, Lcom/shabakaty/downloader/l75;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/l75;-><init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/l75;->d()Lcom/shabakaty/downloader/x73;

    move-result-object p1

    return-object p1
.end method
