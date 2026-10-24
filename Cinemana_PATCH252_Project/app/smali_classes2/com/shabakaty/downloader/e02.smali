.class public final Lcom/shabakaty/downloader/e02;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/g02;


# instance fields
.field public final r:Lcom/shabakaty/downloader/tz2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tz2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e02;->r:Lcom/shabakaty/downloader/tz2;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/shabakaty/downloader/tz2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e02;->r:Lcom/shabakaty/downloader/tz2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
