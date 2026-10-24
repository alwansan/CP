.class public final Lcom/shabakaty/downloader/og2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyPackageViewDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/og2;-><init>(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/og2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/og2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/og2$a;->r:Lcom/shabakaty/downloader/og2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2$a;->r:Lcom/shabakaty/downloader/og2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qu2;->T0()Lcom/shabakaty/downloader/m93;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/og2$a;->r:Lcom/shabakaty/downloader/og2;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/md0;->B(Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/fi1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
