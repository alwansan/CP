.class public final Lcom/shabakaty/downloader/ts;
.super Ljava/lang/Object;
.source "CameraCaptureResultImageInfo.java"

# interfaces
.implements Lcom/shabakaty/downloader/xy1;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ss;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ss;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ts;->a:Lcom/shabakaty/downloader/ss;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/lk4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ts;->a:Lcom/shabakaty/downloader/ss;

    check-cast v0, Lcom/shabakaty/downloader/hr;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hr;->a:Lcom/shabakaty/downloader/lk4;

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ts;->a:Lcom/shabakaty/downloader/ss;

    check-cast v0, Lcom/shabakaty/downloader/hr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hr;->a()J

    move-result-wide v0

    return-wide v0
.end method
