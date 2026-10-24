.class public final Lcom/shabakaty/downloader/j00;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaApplication.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/CinemanaApplication;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/j00;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/j00;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->i()Lcom/shabakaty/downloader/ff3;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ff3;->b(Z)V

    const-string p1, "failed logging out"

    const-string v0, "UserData"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
