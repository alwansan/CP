.class public abstract Lcom/shabakaty/downloader/dp$e;
.super Lcom/shabakaty/downloader/dp;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/dp;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cp;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cp;-><init>(Lcom/shabakaty/downloader/dp;)V

    return-object v0
.end method
