.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "CctBackendFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/fi;


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


# virtual methods
.method public create(Lcom/shabakaty/downloader/pg0;)Lcom/shabakaty/downloader/nq4;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xx;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pg0;->a()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pg0;->d()Lcom/shabakaty/downloader/y30;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pg0;->c()Lcom/shabakaty/downloader/y30;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/shabakaty/downloader/xx;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;)V

    return-object v0
.end method
