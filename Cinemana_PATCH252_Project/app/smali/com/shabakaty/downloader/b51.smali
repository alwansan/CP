.class public final Lcom/shabakaty/downloader/b51;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lcom/shabakaty/downloader/p01;


# instance fields
.field public final a:Lcom/shabakaty/downloader/p01$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p01$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b51;->a:Lcom/shabakaty/downloader/p01$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jp;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/s01$a;)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/s01$a;)V
    .locals 0

    return-void
.end method

.method public e()Lcom/shabakaty/downloader/g71;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/p01$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b51;->a:Lcom/shabakaty/downloader/p01$a;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
