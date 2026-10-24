.class public final Lcom/shabakaty/downloader/pu2;
.super Lcom/shabakaty/downloader/af2;
.source "ModuleDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/fi1;",
        "Lcom/shabakaty/downloader/t93;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qu2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/pu2;->r:Lcom/shabakaty/downloader/qu2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fi1;

    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pu2;->r:Lcom/shabakaty/downloader/qu2;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/qu2;->w:Lcom/shabakaty/downloader/u93;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/qu2;->t:Lcom/shabakaty/downloader/md4;

    .line 6
    invoke-interface {v1, v0, p1, v2}, Lcom/shabakaty/downloader/u93;->a(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/t93;

    move-result-object p1

    return-object p1
.end method
